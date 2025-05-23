import random
import string

from typing import Dict, Any
from sqlalchemy.orm import relationship
from sqlalchemy.schema import Column, ForeignKey
from sqlalchemy.types import DateTime, String, Integer, Boolean
from infrastructure.extensions.model_extensions import ModelExtension
from datetime import datetime, timedelta
from flask_jwt_extended import get_jwt_identity


class TelegramCode(ModelExtension):
    __tablename__ = 'telegram_codes'

    id = Column(Integer, primary_key=True)
    userID = Column(Integer)
    tg_code = Column(String(255))
    expired_at = Column(DateTime)
    created_at = Column(DateTime, default=datetime.utcnow, nullable=False)

    @classmethod
    def generate_telegram_code(cls):
        return ''.join(random.choice(string.digits) for _ in range(6))

    @classmethod
    def code_expires_create(cls):
        return datetime.now() + timedelta(minutes=5)

    @classmethod
    def generate_unique_code(cls):
        while True:
            code = TelegramCode.generate_telegram_code()
            if not TelegramCode.query.filter_by(tg_code=code).first():
                return code

    @classmethod
    def get_telegram_code(cls, code, error_msg='Code not found'):
        return cls.query.filter_by(tg_code=f'{code}').first()
