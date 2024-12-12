from flask import Flask, g, request
from config import HOST, PORT
from views import bp_view
import time

def create_app():
    app = Flask(__name__)

    app.register_blueprint(bp_view)

    @app.before_request
    def start_timer():
        g.start_time = time.time()

    @app.after_request
    def log_request_time(response):
        if hasattr(g, 'start_time'):
            elapsed_time = time.time() - g.start_time
            app.logger.info(f"Request to {request.path} took {elapsed_time:.3f} seconds")
        return response

    app.run(host=HOST, port=PORT, debug=True)


if __name__ == '__main__':
    create_app()



