###static_folder= 'assets' - Flask will look for files in the assets/ folder
'''
from flask import Flask, render_template

app = Flask(__name__, static_folder= 'assets') # http://127.0.0.1:5000/assets/execution.txt like this we will add /assets/file_name at the end.


@app.route('/')
def hello_world():
    return "<p> Hello Guys </p>"

@app.route('/about')
def about():
    return render_template('about.html')

app.run(debug=True)
'''
###---------------------------------------------------------

from flask import Flask, render_template

app = Flask(__name__, static_url_path='/files') #http://127.0.0.1:5000/files/my_image.jpeg like this we will add /files/file_name at the end.

@app.route('/')
def hello_world():
    return "<p> Hello Guys </p>"

@app.route('/about')
def about():
    return render_template('about.html')

app.run(debug=True)




