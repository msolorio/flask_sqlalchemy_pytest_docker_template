from flask import Flask

app = Flask(__name__)


@app.route("/health", methods=["GET"])
def health():
    return "OK", 201
