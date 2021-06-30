from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin

from DataBase_Managment.backend.models.task_users import TaskUsers

task_blueprint = Blueprint('user_blueprint', __name__)

model = TaskUsers()

@task_blueprint.route('/user/create_user', methods=['POST'])
@cross_origin()
def create_user():
    content = model.create_user(request.json['last_name'], request.json['name'],
                                request.json['email'], request.json['events_joined'])
    return jsonify(content)


@task_blueprint.route('/user/get_user', methods=['POST'])
@cross_origin()
def get_user():
    return jsonify(model.get_user(int(request.json['id'])))

@task_blueprint.route('/user/get_users', methods=['POST'])
@cross_origin()
def get_users():
    return jsonify(model.get_users())

@task_blueprint.route('/user/delete_user', methods=['POST'])
@cross_origin()
def delete_user():
    return jsonify(model.delete_user(int(request.json['id'])))
