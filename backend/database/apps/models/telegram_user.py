from typing import Dict, Any

from sqlalchemy.orm import relationship
from sqlalchemy.schema import Column, ForeignKey
from sqlalchemy.types import DateTime, String, Integer, Boolean
from infrastructure.extensions.model_extensions import ModelExtension
from datetime import datetime
from flask_jwt_extended import get_jwt_identity

class TelegramUser(ModelExtension):
    __tablename__ = 'telegram_users'

    id = Column(Integer, primary_key=True)
    userID = Column(Integer)
    chat_id = Column(String(255))
    created_at = Column(DateTime, default=datetime.utcnow, nullable=False)

    @classmethod
    def get_user(cls, user_id):
        return cls.query.filter_by(userID=user_id).first()
