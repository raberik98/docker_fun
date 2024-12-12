from flask import Blueprint, render_template

bp_view = Blueprint('bp_view', __name__, template_folder='templates')

@bp_view.route('/')
def index():
    return render_template(
        'pages/home.html',
        title='Docker fun'
    )