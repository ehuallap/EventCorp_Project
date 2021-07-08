from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin

from backend.models.task_organizers import TaskOrganizers

organizer_blueprint = Blueprint('organizer_blueprint', __name__)

model = TaskOrganizers()

@organizer_blueprint.route('/organizer/create_organizer', methods=['POST'])
@cross_origin()
def create_organizer():
    content = model.create_organizer(request.json['name'], request.json['description'])
    return jsonify(content)

@organizer_blueprint.route('/organizer/get_organizers', methods=['GET'])
@cross_origin()
def get_organizers():
    return jsonify(model.get_organizers())

@organizer_blueprint.route('/organizer/delete_organizer', methods=['DELETE'])
@cross_origin()
def delete_organizer():
    return jsonify(model.delete_organizer(int(request.json['id'])))
