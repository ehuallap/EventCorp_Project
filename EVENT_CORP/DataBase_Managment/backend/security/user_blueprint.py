from flask import Blueprint
from flask import request
from flask import jsonify
from flask_cors import cross_origin
from backend.security.user_task import TaskUser

verify_user_blueprint = Blueprint('verify_user_blueprint', __name__)

model = TaskUser()

@verify_user_blueprint.route('/user/verify', methods=['POST'])
@cross_origin()
def delete_user():
    content = model.verify_user(request.json['password'], request.json['user'])
    return jsonify(content)
