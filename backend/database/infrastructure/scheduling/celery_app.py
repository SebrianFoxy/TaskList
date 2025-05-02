from celery import Celery, Task
from flask import Flask
from .tasks import check_deadlines_and_notify

def create_celery_app(app: Flask) -> Celery:
    class FlaskTask(Task):
        def __call__(self, *args: object, **kwargs: object) -> object:
            with app.app_context():
                return self.run(*args, **kwargs)

    celery = Celery(app.import_name, task_cls=FlaskTask,
                        task_ignore_result=True, )
    celery.config_from_object(app.config["CELERY"])
    celery.set_default()
    app.extensions["celery"] = celery
    configure_celery(celery)
    return celery


def configure_celery(celery_app: Celery):
    celery_app.add_periodic_task(
        5,  # Каждые 30 минут
        check_deadlines_and_notify.s(),
        name='check_deadlines_and_notify'
    )

