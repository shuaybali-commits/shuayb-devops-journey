from flask import Flask
import os
import redis
import socket
from datetime import datetime

app = Flask(__name__)

REDIS_HOST = os.getenv("REDIS_HOST", "redis")
REDIS_PORT = int(os.getenv("REDIS_PORT", 6379))
PORT = int(os.getenv("PORT", 5000))

client = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, decode_responses=True)


@app.route("/")
def home():
    return f"""
    <h1>Flask + Redis + NGINX</h1>
    <p>This application is running in Docker Compose behind an NGINX reverse proxy.</p>

    <h2>Runtime Information</h2>
    <ul>
        <li><strong>Hostname:</strong> {socket.gethostname()}</li>
        <li><strong>Redis Host:</strong> {REDIS_HOST}</li>
        <li><strong>Redis Port:</strong> {REDIS_PORT}</li>
        <li><strong>Current Time:</strong> {datetime.now()}</li>
    </ul>

    <p>Visit <code>/count</code> to increment the Redis-backed counter.</p>
    """


@app.route("/count")
def count():
    visit_count = client.incr("visit_count")

    return f"""
    <h1>Visit Counter</h1>
    <p>This page has been visited <strong>{visit_count}</strong> times.</p>
    <p>The counter is stored in Redis, not inside the Flask container.</p>
    """


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=PORT)
