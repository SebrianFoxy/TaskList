from typing import Dict, Any
from infrastructure.extensions.model_extensions import ModelExtension

from flask_jwt_extended import get_jwt_identity
from flask_login import UserMixin
from sqlalchemy.schema import Column, ForeignKey
from sqlalchemy.types import DateTime, String, Integer, BigInteger, Boolean
from datetime import datetime
from werkzeug.security import generate_password_hash, check_password_hash


class User(ModelExtension, UserMixin):
    __tablename__ = 'users'

    id = Column(Integer, primary_key=True, autoincrement=True)
    email = Column(String(255), unique=True, nullable=False)
    password = Column(String(255), nullable=False)
    dateJoined = Column(DateTime, nullable=False, default=datetime.utcnow)
    approved = Column(Boolean, nullable=False, default=False)
    admin = Column(Boolean, nullable=False, default=False)
    subscription_status = Column(Boolean, nullable=False, default=False)
    subscription_date = Column(String(255), nullable=False, default='')

    def set_password(self, password):
        self.password = generate_password_hash(password)

    def check_password(self, password):
        return check_password_hash(self.password, password)
    
    @classmethod
    def get_by_id(cls, id, error_msg='User not found'):
        return cls.query.get_or_404(id, error_msg)

    @classmethod
    def get_by_token(cls):
        user_id = get_jwt_identity()['userId']
        return cls.get_by_id(user_id, error_msg='User not found, try to get a new Token')

    @classmethod
    def get_by_email(cls, email):
        return cls.query.filter_by(email=email).first()


