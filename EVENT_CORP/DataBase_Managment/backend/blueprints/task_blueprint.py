from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin # para que no genere errores de CORS al hacer peticiones

from backend.models.task_model import TaskModel

task_blueprint = Blueprint('task_blueprint', __name__)

model = TaskModel()

@task_blueprint.route('/task/create_event', methods=['POST'])
@cross_origin()
def create_event():
    content = model.create_event(request.json['title'], request.json['description'],
                                 request.json['date'], request.json['subscribers'])
    return jsonify(content)

@task_blueprint.route('/task/delete_event', methods=['POST'])
@cross_origin()
def delete_task():
    return jsonify(model.delete_event(int(request.json['id'])))

@task_blueprint.route('/task/get_event', methods=['POST'])
@cross_origin()
def get_event():
    return jsonify(model.get_event(int(request.json['id'])))

@task_blueprint.route('/task/get_events', methods=['POST'])
@cross_origin()
def get_events():
    return jsonify(model.get_events())