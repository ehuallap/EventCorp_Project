from flask import Blueprint
from flask import request
from flask import jsonify
from flask_cors import cross_origin
from backend.security.manager_task import TaskManager

manager_blueprint = Blueprint('manager_blueprint', __name__)

model = TaskManager()

@manager_blueprint.route('/manager/verify', methods=['POST'])
@cross_origin()
def delete_user():
    content = model.verify_manager(request.json['password'])
    return jsonify(content)
