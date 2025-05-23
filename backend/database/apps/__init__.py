import os

from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from apps.websocket import init_socketio
from .api import api_bp
from infrastructure.database import setup_sqlalchemy, db
from infrastructure.extensions import setup_mail, setup_jwt_extended
from .config import Config

migrate = Migrate()

def create_app() -> Flask:
    app = Flask(__name__)
    app.config.from_object(Config)

    setup_sqlalchemy(app)
    setup_jwt_extended(app)
    setup_mail(app)
    migrate.init_app(app, db, directory=app.config['MIGRATIONS_FOLDER'] or './migrations')

    init_socketio(app)

    @app.teardown_request
    def shutdown_session(exception):
        db.session.rollback()

    with app.app_context():
        try:
            db.create_all()
        except Exception as e:
            print(e)
    
    app.register_blueprint(api_bp)

    return app
