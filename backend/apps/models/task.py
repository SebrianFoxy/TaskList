from typing import Dict, Any

from sqlalchemy.orm import relationship
from sqlalchemy.schema import Column, ForeignKey
from sqlalchemy.types import DateTime, String, Integer, BigInteger
from infrastructure.extensions.model_extensions import ModelExtension
from datetime import datetime
from flask_jwt_extended import get_jwt_identity


class Task(ModelExtension):
    __tablename__ = 'task'

    id = Column(Integer, primary_key=True)
    userID = Column(Integer)
    task = Column(String(255))
    date = Column(String(255))
    firstTime = Column(String(255))
    stateTask = Column(String(255))
    dateJoined = Column(DateTime, default=datetime.utcnow, nullable=False)

    @classmethod
    def get_by_token(cls):
        user_id = get_jwt_identity()['userId']
        return cls.get_by_id(user_id, error_msg='User not found, try to get a new Token')
    
    @classmethod
    def get_by_id(cls, id, error_msg='Task not found'):
        return cls.query.filter_by(userID=f'{id}').all()
