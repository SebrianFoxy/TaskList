from apps import create_app
from flask_cors import CORS
from apps.websocket import socketio
from infrastructure.scheduling.celery_app import create_celery_app
import socket

app = create_app()
celery = create_celery_app(app)
app.extensions["celery"] = celery
CORS(app)

def get_local_ip():
    """Получает локальный IP-адрес компьютера в сети"""
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        local_ip = s.getsockname()[0]
        s.close()
        return local_ip
    except Exception:
        return "127.0.0.1"


if __name__ == "__main__":
    local_ip = get_local_ip()
    port = 8000

    print(f" * Local: http://127.0.0.1:{port}")
    print(f" * Network: http://{local_ip}:{port}")
    print(f" * API: http://{local_ip}:{port}/api/v1")

    socketio.run(
        app,
        host='0.0.0.0',
        port=port,
        debug=True,
        use_reloader=False
    )
