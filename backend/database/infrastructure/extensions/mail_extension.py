from flask_mail import Mail

mail = Mail()


def setup_mail(app):
    mail.init_app(app)
    return app
