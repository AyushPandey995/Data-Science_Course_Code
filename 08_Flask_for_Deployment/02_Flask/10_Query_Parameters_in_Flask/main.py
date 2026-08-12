from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def home():
    name = request.args.get('name', default="Unnamed")
    language = request.args.get('language', default="Hindi")
    return render_template("index.html", name = name, lang = language)

app.run(debug=True)