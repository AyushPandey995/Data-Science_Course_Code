from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    #some ML model
    output = {"Output" : 43, "Accuracy" : 98.46}
    return jsonify(output), 200

app.run(debug=True)