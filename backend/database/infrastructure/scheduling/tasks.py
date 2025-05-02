from datetime import datetime, timedelta
import os
from apps.models import Task, User, TelegramUser
import requests
from celery import shared_task
from infrastructure.database import db
from sqlalchemy.exc import DatabaseError


@shared_task(bind=True)
def check_deadlines_and_notify(self):
    """Проверяет задачи с приближающимся дедлайном"""
    try:
        now = datetime.now()
        current_date_str = now.strftime('%Y-%m-%d')

        with db.session.begin():
            tasks = db.session.query(Task).filter(
                Task.date >= current_date_str,
            ).all()

            print(f"Найдено {len(tasks)} задач для проверки")

            for task in tasks:
                try:
                    process_task_reminder(task, now)
                except Exception as task_error:
                    print(f"Ошибка обработки задачи {task.id}: {task_error}")
                    continue

    except DatabaseError as db_error:
        print(f"Ошибка базы данных: {db_error}")
        raise self.retry(exc=db_error, countdown=60)
    except Exception as e:
        print(f"Неожиданная ошибка: {e}")
        raise self.retry(exc=e, countdown=300)


def process_task_reminder(task, now):
    """Обработка задач с защитой от дублирования"""
    try:
        first_time = task.firstTime + \
            ':00' if len(task.firstTime.split(':')) == 2 else task.firstTime
        task_dt = datetime.strptime(
            f"{task.date} {first_time}", "%Y-%m-%d %H:%M:%S")
        time_left = task_dt - now
        hours_left = time_left.total_seconds() / 3600

        reminder_intervals = [24, 12, 6]

        for interval in reminder_intervals:
            if abs(hours_left - interval) <= 0.5:
                if interval not in (task.sent_reminders or []):
                    print(
                        f"Напоминание за {interval} часов (фактически {hours_left:.1f} ч)")
                    user = db.session.query(User).get(task.userID)
                    telegram_user = db.session.query(
                        TelegramUser).filter_by(userID=user.id).first()

                    if telegram_user and telegram_user.chat_id:
                        send_telegram_reminder.delay(
                            chat_id=telegram_user.chat_id,
                            task_text=task.task,
                            deadline=task_dt.strftime('%d.%m.%Y %H:%M'),
                            hours_left=interval
                        )

                        if not task.sent_reminders:
                            task.sent_reminders = []
                        task.sent_reminders.append(interval)
                        db.session.commit()

    except Exception as e:
        print(f"Ошибка обработки задачи: {e}")
        db.session.rollback()


@shared_task(bind=True, max_retries=3)
def send_telegram_reminder(self, chat_id, task_text, deadline, hours_left):
    """Отправляет уведомление в Telegram"""
    try:
        message = format_reminder_message(task_text, deadline, hours_left)
        send_telegram_message(chat_id, message)
    except Exception as e:
        print(f"Ошибка отправки в Telegram: {e}")
        raise self.retry(exc=e, countdown=60)


def format_reminder_message(task_text, deadline, hours_left):
    """Форматирует текст напоминания"""
    return (
        f"Напоминание о задаче*\n\n"
        f"{task_text}*\n"
        f"До дедлайна: *{hours_left} часов*\n"
        f"Срок: {deadline}\n\n"
        f"Не забудьте выполнить вовремя!"
    )


def send_telegram_message(chat_id, message):
    """Отправляет сообщение через Telegram API"""
    bot_token = os.getenv('TELEGRAM_BOT_TOKEN')
    if not bot_token:
        raise ValueError("TELEGRAM_BOT_TOKEN не установлен")

    url = f"https://api.telegram.org/bot{bot_token}/sendMessage"
    response = requests.post(
        url,
        json={
            'chat_id': chat_id,
            'text': message,
        },
        timeout=10
    )
    response.raise_for_status()


