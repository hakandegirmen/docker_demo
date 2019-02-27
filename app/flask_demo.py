from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def hello_world():
    return '<h1>Hello, World! I am running on the docker network something<h1>'


# important where you host this,
app.run(host='0.0.0.0', debug=True)
