from flask import abort
from flask_restx import Namespace, Resource, fields
from flask_restx.reqparse import RequestParser
from ..models import User, TelegramUser
from flask import request, abort, current_app
from sqlalchemy.exc import IntegrityError
from infrastructure.database import db
from infrastructure.extensions import jwt_required_class

ns = Namespace(name='user', description='Users operations')

user_change_password_parser = RequestParser(bundle_errors=True) \
    .add_argument(name="password", type=str, required=True, nullable=False, location='json') \
    .add_argument(name="new_password", type=str, required=True, nullable=False, location='json')

user_expect_model = ns.model('User edit', {
    'email': fields.String(),
})

user_response_model = ns.model('User response', {
    'id': fields.Integer(),
    'email': fields.String(required=True),
    'approved': fields.Boolean(),
    'dateJoined': fields.DateTime(),
    'admin': fields.Boolean(),
    'subscription_status': fields.Boolean(),
    'subscription_date': fields.String(),
})

telegram_user_model = ns.model('Telegram User response', {
    'id': fields.Integer(),
    'userID': fields.Integer(),
    'chat_id': fields.String(),
})


@ns.route('')
@ns.doc(security='Bearer')
@jwt_required_class
class UserApi(Resource):
    @ns.marshal_with(user_response_model)
    def get(self):
        user = User.get_by_token()
        return user

    @ns.expect(user_expect_model)
    @ns.marshal_with(user_response_model)
    def put(self):
        user = User.get_by_token()

        req_data = ns.payload

        user.email = req_data.get('email', user.email)

        db.session.commit()

        return user


@ns.route('/change_password')
@ns.doc(security='Bearer')
@jwt_required_class
class UserChangePasswordApi(Resource):
    @ns.expect(user_change_password_parser)
    def put(self):
        user = User.get_by_token()

        req_data = ns.payload

        password = req_data.get('password')
        new_password = req_data.get('new_password')

        if not user.check_password(password):
            abort(401, 'Invalid password')

        user.set_password(new_password)

        db.session.commit()

        response = dict(
            message='Success',
        )
        return response, 200


@ns.route('/check_telegram_link')
@ns.doc(security='Bearer')
@jwt_required_class
class CheckTelegramLink(Resource):
    @ns.marshal_with(telegram_user_model)
    def get(self):
        user_id = User.get_by_token().id

        if not user_id:
            abort(401, "User ID is missing in token")

        telegram_user = TelegramUser.get_user(user_id)

        if not telegram_user:
            abort(401, "User not link to telegram bot")

        return telegram_user, 200

@ns.route('/telegram_unlink')
@ns.doc(security='Bearer')
@jwt_required_class
class TelegramUnlink(Resource):
    def delete(self):
        user_id = User.get_by_token().id
        telegram_user = TelegramUser.get_user(user_id)

        if not telegram_user:
            abort(401, "User not link to telegram bot")

        db.session.delete(telegram_user)
        db.session.commit()
        return '', 204

