from flask_jwt_extended import JWTManager, jwt_required, create_access_token, create_refresh_token, get_jwt

from apps.models.user import User

jwt = JWTManager()


def setup_jwt_extended(app):
    jwt.init_app(app)
    return app


def jwt_required_class(cls):
    methods = cls.__dict__.copy()

    for name, method in methods.items():
        if callable(method) and not name.startswith("__"):
            setattr(cls, name, jwt_required()(method))

    return cls


def create_token(user: User, refresh=False):
    if refresh:
        return create_refresh_token(identity={
            'userId': user.id,
        })
    else:
        return create_access_token(
            identity={
                'email': user.email,
                'userId': user.id,
            }
        )


