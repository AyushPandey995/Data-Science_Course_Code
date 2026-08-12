#Flashing is a way to send temporary messages from the backend (Flask) to the frontend (HTML). These messages are usually used for:
"""
Status updates (e.g., "Prediction complete")
Error messages (e.g., "Invalid input")
Notifications (e.g., "File uploaded successfully")
Flashed messages are stored in the session and automatically cleared after being displayed."""

from flask import Flask, render_template, flash
app = Flask(__name__)
app.secret_key = "my_secret_key" 

@app.route("/")
def home():
    return render_template("home.html")

@app.route("/about")
def about():
    flash('ThankYou for visiting About Page') # We can make this as a dismisable message.
    return render_template("about.html")

app.run(debug=True)

