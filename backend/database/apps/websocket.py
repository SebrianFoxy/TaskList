from flask_socketio import SocketIO, emit, join_room, leave_room
from flask import request
from datetime import datetime
from .models import TelegramCode

socketio = SocketIO(
    cors_allowed_origins="*",
    async_mode='gevent',
    logger=True,
    engineio_logger=True
)

code_rooms = {}


def init_socketio(app):
    socketio.init_app(app)
    register_socket_events()


def register_socket_events():
    @socketio.on('connect')
    def handle_connect():
        print(f'Client connected: {request.sid}')

    @socketio.on('register_code')
    def handle_register_code(data):
        code = data.get('code')
        if not code:
            return

        telegram_code = TelegramCode.get_telegram_code(code)
        if not telegram_code or telegram_code.expired_at < datetime.now():
            emit('code_invalid', {'message': 'Invalid or expired code'})
            return

        join_room(code)
        code_rooms[code] = request.sid
        emit('code_registered', {'message': 'Code registered successfully'})

    @socketio.on('disconnect')
    def handle_disconnect():
        print(f'Client disconnected: {request.sid}')
        for code, sid in list(code_rooms.items()):
            if sid == request.sid:
                del code_rooms[code]
                break
