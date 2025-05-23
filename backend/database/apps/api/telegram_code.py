from datetime import datetime
from flask import abort
from flask_restx import Namespace, Resource, fields
from flask_restx.reqparse import RequestParser
from ..models import User, TelegramCode, TelegramUser
from flask import request, abort, current_app
from sqlalchemy.exc import IntegrityError
from infrastructure.database import db
from infrastructure.extensions import jwt_required_class
from ..websocket import socketio, code_rooms

ns = Namespace(name='telegram code', description='Telegram_code operations')

telegram_code_response_model = ns.model('telegram code generate response', {
    'id': fields.Integer(),
    'userID': fields.Integer(),
    'tg_code': fields.String(),
    'expired_at': fields.DateTime()
})

telegram_code_expect_model = ns.model('telegram code request', {
    'tg_code': fields.String(),
    'chat_id': fields.String(),
})


@ns.route('/generate')
@ns.doc(security='Bearer')
@jwt_required_class
class TelegramCodeApi(Resource):
    @ns.marshal_with(telegram_code_response_model)
    def post(self):
        user_id = User.get_by_token().id

        if not user_id:
            abort(401, "User ID is missing in token")

        telegram_user = TelegramUser.get_user(user_id=user_id)

        if telegram_user:
            abort(401, "User already linked!")

        data = {
            'userID': user_id,
            'tg_code': TelegramCode.generate_unique_code(),
            'expired_at': TelegramCode.code_expires_create(),
        }

        new_telegram_code = TelegramCode(**data)

        try:
            new_telegram_code.save()
        except IntegrityError as e:
            current_app.logger.error(e)
            abort(400, str(e.orig))

        return new_telegram_code, 201


@ns.route('/verify')
class TelegramVerifyApi(Resource):
    @ns.marshal_list_with(telegram_code_response_model)
    @ns.expect(telegram_code_expect_model)
    def post(self):
        data = ns.payload
        tg_code = data['tg_code']
        chat_id = data['chat_id']
        telegram_code = TelegramCode.get_telegram_code(tg_code)

        if not telegram_code:
            abort(404, 'Code not found')

        if telegram_code.expired_at < datetime.now():
            abort(400, 'Code expired')

        existing_link = TelegramUser.get_user(telegram_code.userID)
        if existing_link:
            abort(400, "User already linked to a Telegram account")

        new_telegram_user = TelegramUser(
            userID=telegram_code.userID,
            chat_id=chat_id
        )

        try:
            if tg_code in code_rooms:
                socketio.emit('code_verified', {
                    'message': 'Code verified successfully',
                    'chat_id': chat_id
                }, room=tg_code)

            db.session.add(new_telegram_user)
            db.session.commit()

        except IntegrityError as e:
            db.session.rollback()
            abort(400, 'Failed to link Telegram account')

        return new_telegram_user, 201
