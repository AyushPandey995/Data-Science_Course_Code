from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "<p> Hello Guys </p>"

@app.route('/about')
def about():
    return "<p> Hello, this is about page </p>"

app.run(debug=True)