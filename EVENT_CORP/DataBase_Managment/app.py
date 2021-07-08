from flask import Flask
from flask import request
from flask import jsonify
from flask import make_response
from flask_cors import CORS, cross_origin
from flask import session

import requests
import jwt
from functools import wraps
from datetime import datetime, timedelta

from backend.blueprints.event_blueprint import event_blueprint
from backend.blueprints.user_blueprint import user_blueprint
from backend.blueprints.organizer_blueprint import organizer_blueprint
from backend.blueprints.category_blueprint import category_blueprint
from backend.security.manager_blueprint import manager_blueprint
from backend.models.task_users import TaskUsers

app = Flask(__name__)

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
        token = request.args.get('token')
        if not token:
            return jsonify({'Alert!': 'No se encuentra el token de sesión'})
        try:
            payload = jwt.decode(token, app.config['SECRET_KEY'])
        except:
            return jsonify({'Alert!': 'Token invalida!'})
    return decorated


@app.route('/authorize', methods=['POST'])
@cross_origin()
def authorize():
    credential = request.json['password']

    auth_data = {'password': credential}
    resp = requests.post('http://127.0.0.1:5000/manager/verify', json=auth_data)
    credential = resp.json()

    if credential[0]['Authorization'] == 'Ha sido autorizado':
        session['authorized'] = True
        token = jwt.encode({
            'user': credential,
            'expiration': str(datetime.utcnow() + timedelta(200))
        },
            app.config['SECRET_KEY'])
        return jsonify({'token': token.decode('utf-8')})
    else:
        return make_response('No se ha podido verificar su credencial', 403,
                             {'WWW-Authenticate': 'Basic realm:"Autorizacion Fallida'})


cors = CORS(app)

if __name__ == "__main__":
    app.run(debug=True)
