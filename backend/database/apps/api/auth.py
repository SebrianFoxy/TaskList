from flask import abort
from flask_jwt_extended import jwt_required, get_jwt_identity
from flask_restx import Resource, Namespace, fields
from flask_restx.inputs import email
from flask_restx.reqparse import RequestParser
from werkzeug.security import check_password_hash

from ..models.user import User
from infrastructure.extensions.jwt_extension import create_token, jwt_required_class
from ..models.mail_sender import MailSender

ns = Namespace(name='auth', description='Auth operations')

login_parser = RequestParser(bundle_errors=True). \
    add_argument(name="email", type=email(), required=True, nullable=False, location='json'). \
    add_argument(name="password", type=str, required=True, nullable=False, location='json')

reg_parser = RequestParser(bundle_errors=True) \
    .add_argument(name="email", type=email(), required=True, nullable=False, location='json') \
    .add_argument(name="password", type=str, required=True, nullable=False, location='json')

login_model = ns.model('Login response', {
    'message': fields.String,
    'access_token': fields.String,
    'refresh_token': fields.String,
})


# @ns.route('/mail_sender')
# class MailSenderApi(Resource):
#     @ns.expect(login_parser)
#     def post(self):
#         req_data = login_parser.parse_args()

#         _email = req_data['email']
#         _password = req_data['password']
#         user_exists = User.get_by_email(_email)

#         if not user_exists:
#             abort(404, 'User not found')

#         if not check_password_hash(user_exists.password, _password):
#             abort(401, 'Invalid password')

#         if user_exists.approved:
#             abort(400, 'Account approved.')

#         MailSender.send_confirm_account_email(email=_email)

#         response = dict(
#             message='An email to confirm the account has been sent by email',
#         )
#         return response, 200


@ns.route('/confirm_account/<string:token>')
class ConfirmAccountApi(Resource):
    def get(self, token):
        try:
            email = MailSender.s.loads(
                token, salt='email-confirm', max_age=3600)
            user = User.get_by_email(email)

            if not user:
                abort(404, 'User not found')

            if user.approved:
                return {'message': 'Account already approved'}, 200
            
            user.approved = True
            user.save()

            return {'message': 'Account confirmed successfully'}, 200
        except Exception as e:
            abort(400, 'Invalid or expired token')


@ns.route("/login", endpoint="auth_login")
class LoginApi(Resource):
    @ns.marshal_with(login_model)
    @ns.expect(login_parser)
    def post(self):

        data = login_parser.parse_args()

        _email = data['email']
        _password = data['password']

        user_exists = User.get_by_email(_email)

        if not user_exists:
            abort(401, 'User not found')

        if not user_exists.check_password(_password):
            abort(401, 'Invalid password')

        if not user_exists.approved:
            MailSender.send_confirm_account_email(email=_email)
            abort(400, 'Confirm your account using the link in the email to log in')

        access_token = create_token(user_exists)
        refresh_token = create_token(user_exists, refresh=True)

        response = dict(
            message="success",
            access_token=access_token,
            refresh_token=refresh_token,
        )
        return response


@ns.route("/registration", endpoint="auth_registration")
class RegistrationApi(Resource):
    @ns.expect(reg_parser)
    def post(self):
        req_data = ns.payload

        _email = req_data['email']
        _password = req_data['password']

        user_exists = User.get_by_email(_email)
        if user_exists:
            abort(400, 'Account exists')

        new_user = User()
        new_user.email = _email
        new_user.set_password(_password)
        new_user.save()

        MailSender.send_confirm_account_email(email=_email)

        response = dict(
            message="Account created",
        )
        return response, 201


@ns.route('/refresh_token')
@ns.doc(security='Bearer')
class JwtRefreshApi(Resource):
    @ns.marshal_with(login_model)
    @jwt_required(refresh=True)
    def get(self):
        jwt_sub = get_jwt_identity()

        user_id = jwt_sub['userId']

        user = User.get_by_id(user_id)

        new_access_token = create_token(user)
        refresh_token = create_token(user, refresh=True)

        response = dict(
            message="success",
            access_token=new_access_token,
            refresh_token=refresh_token,
        )
        return response
