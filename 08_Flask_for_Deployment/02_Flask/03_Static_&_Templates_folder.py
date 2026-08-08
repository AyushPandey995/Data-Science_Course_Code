

'''We can download any file of static folder by adding '/static/file_name' at the end of Url.
Example - http://127.0.0.1:5000/static/my_image.jpeg'''

"""We can use HTML templates after adding them in templates folder."""

"""We have to add CSS or Javascript file to static folder."""

from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "<p> Hello Guys </p>"

@app.route('/about')
def about():
    return render_template('about.html')

app.run(debug=True)




