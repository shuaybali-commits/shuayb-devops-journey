# Flask-app.py

from flask import Flask
import redis
import os

app = Flask(__name__)

# Redis connection details from environment variables
redis_host = os.getenv("REDIS_HOST")
redis_port = os.getenv("REDIS_PORT")

# Connecting to Redis
client = redis.Redis(host=redis_host, port=redis_port)


# Welcome Message
@app.route("/")
def welcome():
    return "Welcome to my Docker x Flask Collaboration!"


# Display the number of visits and Redis connection details
@app.route("/count")
def count():
    count = client.incr("visiting_count")
    return (
        f"This page has been visited {count} times.\n"
        f"Redis host: {redis_host}\n"
        f"Redis port: {redis_port}"
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5003, debug=True)
