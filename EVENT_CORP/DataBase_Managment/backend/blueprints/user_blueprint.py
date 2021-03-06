from flask import Blueprint
from flask import jsonify
from flask import request
from flask_cors import cross_origin

from ..models.task_users import TaskUsers

user_blueprint = Blueprint('user_blueprint', __name__)

model = TaskUsers()

@user_blueprint.route('/user/create_user', methods=['POST'])
@cross_origin()
def create_user():
    content = model.create_user(request.json['last_name'], request.json['first_name'],
                                request.json['email'], request.json['events_joined'],
                                request.json['password'])
    return jsonify(content)

@user_blueprint.route('/user/get_user', methods=['POST'])
@cross_origin()
def get_user():
    return jsonify(model.get_user(int(request.json['id'])))

@user_blueprint.route('/user/get_users', methods=['GET'])
@cross_origin()
def get_users():
    return jsonify(model.get_users())

@user_blueprint.route('/user/delete_user', methods=['DELETE'])
@cross_origin()
def delete_user():
    return jsonify(model.delete_user(int(request.json['id'])))
