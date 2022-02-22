from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World??</p>"

@app.route("/page/")
def newPage():
    return "<p>Fuck society</p>"