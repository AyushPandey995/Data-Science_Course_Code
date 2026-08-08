
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "<p> Hello Guys </p>"

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/image')
def image():
    return render_template('image.html')



app.run(debug=True)


