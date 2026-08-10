from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/", methods= ["GET", "POST"])
def form():
    if request.method == "POST":
        print(request.form)
        name = request.form['Email']
        password = request.form['Password']
        print(f"The Email id is {name} & Password is {password}")
        #We can store this on our database.
        return "<b>Thanks for entering info.. You're now logged in!</b>"
    return render_template('index.html')

app.run(debug=True)
