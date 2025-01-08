from flask import render_template, url_for
from flask_mail import Message
from itsdangerous import URLSafeTimedSerializer

from .user import User
from infrastructure.extensions import mail


class MailSender:
    s = URLSafeTimedSerializer('secret')

    @classmethod
    def send_confirm_account_email(cls, *, email):
        token = cls.s.dumps(
            email,
            salt='email-confirm'
        )

        msg = Message('Подтверждение аккаунта', recipients=[email])
        msg.html = render_template(
            'messages/confirm_account.html', token=token)
        mail.send(msg)
