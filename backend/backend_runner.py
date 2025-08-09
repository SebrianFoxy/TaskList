import os
import subprocess
import sys
from multiprocessing import Process


def run_telegram_bot():
    """Запуск телеграм-бота"""
    os.chdir("telegram_bot")
    subprocess.run([sys.executable, "tg_bot.py"])
    os.chdir("..")


def run_flask_app():
    """Запуск Flask приложения"""
    os.chdir("database")
    subprocess.run([sys.executable, "app.py"])
    os.chdir("..")


def run_celery_worker():
    """Запуск Celery worker"""
    os.chdir("database")
    subprocess.run(["celery", "-A", "app.celery", "worker", "--loglevel=info"])
    os.chdir("..")


def run_celery_beat():
    """Запуск Celery beat"""
    os.chdir("database")
    subprocess.run(["celery", "-A", "app.celery", "beat", "--loglevel=info"])
    os.chdir("..")


if __name__ == "__main__":
    processes = [
        Process(target=run_telegram_bot),
        Process(target=run_flask_app),
        Process(target=run_celery_worker),
        Process(target=run_celery_beat),
    ]

    # Запускаем все процессы
    for p in processes:
        p.start()

    # Ждем завершения всех процессов (хотя это маловероятно)
    for p in processes:
        p.join()
