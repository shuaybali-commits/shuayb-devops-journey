from flask import Flask
import socket
import platform
from datetime import datetime
import os

app = Flask(__name__)


@app.route("/")
def home():
    return f"""
    <html>
    <head>
        <title>Hello Flask</title>
    </head>
    <body>
        <h1>🐳 Hello Flask</h1>
        <p>This Flask application is running inside a Docker container.</p>

        <h2>Runtime Information</h2>
        <ul>
            <li><strong>Hostname:</strong> {socket.gethostname()}</li>
            <li><strong>Python Version:</strong> {platform.python_version()}</li>
            <li><strong>Platform:</strong> {platform.system()}</li>
            <li><strong>Current Time:</strong> {datetime.now()}</li>
        </ul>

        <p><strong>Built by:</strong> Shuayb Ali</p>
    </body>
    </html>
    """


if __name__ == "__main__":
    PORT = int(os.getenv("PORT", 5000))
    app.run(host="0.0.0.0", port=PORT)
