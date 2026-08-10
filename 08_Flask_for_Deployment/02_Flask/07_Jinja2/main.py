from flask import Flask, request, render_template

app = Flask(__name__)

@app.route("/")
def jinja():
    name = "Aysuh"
    stream = "Computer Science"
    college = "Sinhgad Academy of Engineering"
    city = "Pune"
    language = "Python"
    lucky_no = [7, 11, 13, 51, 101]
    footer = "<p>Copyright 2026 | All rights reserved.</p>"
    return render_template("index.html", name = name, lucky = lucky_no,stream = stream, city = city, college = college, lang = language, footer = footer)

app.run(debug=True)