from flask import Flask
import os
from dotenv import load_dotenv

def create_app():
    load_dotenv()
    app = Flask(__name__, template_folder='templates', static_folder='static')
    app.secret_key = os.environ.get('SECRET_KEY')

    with app.app_context():
        from . import models
        models.init_db()
        from . import routes
        routes.init_routes(app)

    return app