import os
from dotenv import load_dotenv

load_dotenv()

class Config:
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_DATABASE_URI = os.getenv('DATABASE_URL')
    MIGRATIONS_FOLDER = os.getenv('MIGRATIONS_FOLDER')
    SECRET_KEY = os.getenv('SECRET_KEY')
    JWT_SECRET_KEY = os.getenv('JWT_SECRET_KEY')

    MAIL_SERVER = 'smtp.gmail.com'
    MAIL_PORT = 465
    MAIL_USE_SSL = True
    MAIL_USERNAME = os.getenv('GMAIL')
    MAIL_PASSWORD = os.getenv('GMAIL_PASSWORD')
    MAIL_DEFAULT_SENDER = os.getenv('GMAIL')
