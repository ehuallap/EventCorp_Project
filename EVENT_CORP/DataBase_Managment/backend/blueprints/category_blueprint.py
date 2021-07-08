from flask import Flask
from flask import Blueprint
from flask import request
from flask import jsonify

from flask_cors import CORS, cross_origin

from backend.models.task_categories import TaskCategories

category_blueprint = Blueprint('category_blueprint', __name__)

model = TaskCategories()

@category_blueprint.route('/category/create_category', methods=['POST'])
@cross_origin()
def create_category():
    content = model.create_category(request.json['name'], request.json['description'])
    return jsonify(content)

@category_blueprint.route('/category/get_categories', methods=['GET'])
@cross_origin()
def get_categories():
    return jsonify(model.get_categories())

@category_blueprint.route('/category/delete_category', methods=['DELETE'])
@cross_origin()
def delete_category():
    return jsonify(model.delete_category(int(request.json['id'])))
