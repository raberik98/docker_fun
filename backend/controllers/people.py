from flask import Blueprint
from models.people import get_all_people

bp_people_controller = Blueprint('bp_people_controller', __name__)

@bp_people_controller.route('/api/people')
def api_get_all_people():
    data = get_all_people()
    return data