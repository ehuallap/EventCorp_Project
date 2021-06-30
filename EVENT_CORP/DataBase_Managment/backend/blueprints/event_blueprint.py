from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin

from DataBase_Managment.backend.models.task_events import TaskEvents

task_blueprint = Blueprint('event_blueprint', __name__)

model = TaskEvents()

@task_blueprint.route('/event/create_event', methods=['POST'])
@cross_origin()
def create_event():
    content = model.create_event(request.json['title'], request.json['description'],
                                 request.json['date_start'], request.json['date_end'],
                                 request.json['subscribers'])
    return jsonify(content)

@task_blueprint.route('/event/get_event', methods=['POST'])
@cross_origin()
def get_event():
    return jsonify(model.get_event(int(request.json['id'])))

@task_blueprint.route('/event/get_events', methods=['POST'])
@cross_origin()
def get_events():
    return jsonify(model.get_events())

@task_blueprint.route('/event/delete_event', methods=['POST'])
@cross_origin()
def delete_task():
    return jsonify(model.delete_event(int(request.json['id'])))
