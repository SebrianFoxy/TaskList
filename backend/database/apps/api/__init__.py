from flask import Blueprint
from flask_restx import Api
from .task import ns as task_ns
from .user import ns as user_ns
from .auth import ns as auth_ns
from .telegram_code import ns as telegram_code_ns

api_bp = Blueprint('api_bp', __name__, url_prefix='/api/v1')
authorizations = {"Bearer": {"type": "apiKey", "in": "header", "name": "Authorization"}}

api = Api(
    api_bp,
    title='TaskList',
    version='1.0',
    description='Rest API TaskList',
    authorizations=authorizations,
)

api.add_namespace(task_ns, path="/task")
api.add_namespace(user_ns, path="/user")
api.add_namespace(auth_ns, path="/auth")
api.add_namespace(telegram_code_ns, path="/telegram_code")
