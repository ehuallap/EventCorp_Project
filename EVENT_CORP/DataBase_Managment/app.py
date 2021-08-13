# DEPENDENCIAS FLASK
from flask import Flask
from flask import request
from flask import jsonify
from flask import render_template
from flask_cors import CORS, cross_origin
from flask import session

# PETICIONES HTTP
import requests
# JSON WEB TOKEN FRAMEWORK
import jwt
# OTHER LIBRARIES
from functools import wraps
from datetime import datetime, timedelta

# REGISTER PATHS OF BLUEPRINTS
from backend.blueprints.event_blueprint import event_blueprint
from backend.blueprints.user_blueprint import user_blueprint
from backend.blueprints.organizer_blueprint import organizer_blueprint
from backend.blueprints.category_blueprint import category_blueprint
from backend.security.manager_blueprint import manager_blueprint
from backend.models.task_users import TaskUsers

# MAIN APP
config = {
    'support_credentials=True'
    'ORIGINS': [
        'http://localhost:8080',
        'support_credentials=True'
    ],
}
app = Flask(__name__,
            static_folder="./frontend/dist/static",
            template_folder="./frontend/dist")

app.register_blueprint(event_blueprint)
app.register_blueprint(user_blueprint)
app.register_blueprint(organizer_blueprint)
app.register_blueprint(category_blueprint)
app.register_blueprint(manager_blueprint)

model = TaskUsers()

app.config['SECRET_KEY'] = 'bad8ecc08f9a48bab63b81a3fb11404c'

def token_required(func):
    @wraps(func)
    def decorated(*args, **kwargs):
        # token = request.args.get('token')
        token = request.headers.get("authorization")
        if not token:
            return jsonify({'Alert!': 'No se encuentra el token de sesión'}), 401
        try:
            print(token)
            payload = jwt.decode(token, app.config['SECRET_KEY'], algorithms=["HS256"])
        except:
            return jsonify({'Alert!': 'Token invalida!'}), 403
        return func(*args, **kwargs)
    return decorated

@app.route('/authorize', methods=['POST'])
@cross_origin()
def authorize():
    credential = request.json['password']
    user = request.json['user']
    auth_data = {
        'user': user,
        'password': credential
    }
    resp = requests.post('http://127.0.0.1:5000/manager/verify', json=auth_data)
    credential = resp.json()

    if credential[0]['Auth'] == 'Ha sido autorizado':
        session['authorized'] = True
        token = jwt.encode({
            'state': credential[0]['Auth'],
            'expiration': str(datetime.utcnow() + timedelta(20000))
        },
            app.config['SECRET_KEY'])
        return jsonify({
            'code': 'A',
            'token': token
        })
    else:
        return jsonify({
            'code': 'U',
            'token': ''
        })


cors = CORS(app, resources={r"/*": {"origins": "*"}})

@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def dender_vue(path):
    return render_template("index.html")


if __name__ == "__main__":
    app.run(debug=True)
