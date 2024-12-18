from flask import Blueprint, render_template
from controllers.people import get_all_people

bp_people_view = Blueprint('bp_people_view', __name__, template_folder='templates')

@bp_people_view.route('/')
def index():
    people = get_all_people()
    return render_template(
        'pages/home.html',
        title='Docker fun',
        people=people
    )