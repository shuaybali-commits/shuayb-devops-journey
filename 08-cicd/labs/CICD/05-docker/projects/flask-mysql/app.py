from flask import Flask
import MySQLdb
import os

app = Flask(__name__)

DB_HOST = os.getenv("DB_HOST", "mydb")
DB_USER = os.getenv("DB_USER", "root")
DB_PASSWORD = os.getenv("DB_PASSWORD", "my-secret-pw")
DB_NAME = os.getenv("DB_NAME", "mysql")
PORT = int(os.getenv("PORT", 5002))


@app.route("/")
def home():
    db = MySQLdb.connect(host=DB_HOST, user=DB_USER, passwd=DB_PASSWORD, db=DB_NAME)

    cur = db.cursor()
    cur.execute("SELECT VERSION()")
    version = cur.fetchone()

    cur.close()
    db.close()

    return f"""
    <h1>Flask + MySQL</h1>
    <p>This Flask app is running in one container and connecting to MySQL in another container.</p>
    <p><strong>MySQL Version:</strong> {version[0]}</p>
    """


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=PORT)

