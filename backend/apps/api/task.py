from flask import abort
from flask_restx import Namespace, Resource, fields
from flask_restx.reqparse import RequestParser
from ..models.task import Task
from ..models.user import User
from flask import request, abort, current_app
from sqlalchemy.exc import IntegrityError
from infrastructure.database import db
from infrastructure.extensions import jwt_required_class

ns = Namespace(name='task', description='Task operations')

task_expect_model = ns.model('task expect', {
    'task': fields.String(),
    'date': fields.String(),
    'firstTime': fields.String(),
    'stateTask': fields.String(),
})

task_response_model = ns.model('task response', {
    'id': fields.Integer(),
    'task': fields.String(),
    'date': fields.String(),
    'firstTime': fields.String(),
    'stateTask': fields.String(),
    'dateJoined': fields.DateTime(),
})


@ns.route('')
@ns.doc(security='Bearer')
@jwt_required_class
class TaskApi(Resource):
    @ns.marshal_list_with(task_response_model)
    def get(self):
        task = Task.get_by_token()
        return task
    
    @ns.marshal_list_with(task_response_model)
    @ns.expect(task_expect_model)
    def post(self):
        data = ns.payload
        user_id = User.get_by_token().id

        if not user_id:
            abort(401, "User ID is missing in token")

        data['userID'] = user_id
        
        new_task = Task(**data)

        try:
            new_task.save()
        except IntegrityError as e:
            current_app.logger.error(e)
            abort(400, str(e.orig))

        return new_task, 201
    

@ns.route('/<id>')
@ns.param('id', 'The unique identifier of a Product')
@ns.doc(security='Bearer')
@jwt_required_class
class TaskApiById(Resource):
    @ns.marshal_with(task_response_model)
    def get(self, id):
        user_id = User.get_by_token().id
        task = Task.query.get_or_404(id, 'task not found')

        if task.userID != user_id:
            abort(403, "You are not authorized to access this task")

        return task
    
    @ns.expect(task_expect_model)
    @ns.marshal_with(task_response_model)
    def put(self, id):
        user_id = User.get_by_token().id
        task = Task.query.get_or_404(id, 'task not found')

        if task.userID != user_id:
            abort(403, "You are not authorized to access this task")

        data = ns.payload

        try:
            task.update(data)
        except IntegrityError as e:
            current_app.logger.error(e)
            abort(400, str(e.orig))

        return task

    @ns.response(204, 'task deleted')
    def delete(self, id):
        user_id = User.get_by_token().id
        task = Task.query.get_or_404(id, 'task not found')

        if task.userID != user_id:
            abort(403, "You are not authorized to access this task")

        db.session.delete(task)
        db.session.commit()
        return '', 204
