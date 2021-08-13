from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify
from flask_cors import CORS, cross_origin
#from app import token_required

from ..models.task_events import TaskEvents

event_blueprint = Blueprint('event_blueprint', __name__)

model = TaskEvents()


@event_blueprint.route('/event/create_event', methods=['POST'])
@cross_origin()
def create_event():
    content = model.create_event(request.json['title'], request.json['description'],
                                 request.json['date_start'], request.json['date_end'],
                                 request.json['subscribers'], request.json['categoryId'],
                                 request.json['organizerId'])
    return jsonify(content)


@event_blueprint.route('/event/get_event/', methods=['POST'])
@cross_origin()
def get_event():
    return jsonify(model.get_event(int(request.json['id'])))


@event_blueprint.route('/event/get_event_category/', methods=['POST'])
@cross_origin()
def get_event_category():
    return jsonify(model.get_event_category(int(request.json['id'])))


@event_blueprint.route('/event/get_event_organizer/', methods=['POST'])
@cross_origin()
def get_event_organizer():
    return jsonify(model.get_event_organizer(int(request.json['id'])))


@event_blueprint.route('/event/get_events', methods=['GET'])
#@token_required
@cross_origin()
def get_events():
    return jsonify(model.get_events())


@event_blueprint.route('/event/delete_event', methods=['DELETE'])
@cross_origin()
def delete_task():
    return jsonify(model.delete_event(int(request.json['id'])))