#Challenge-Dockerfile

#Build and Run a Flask App with Redis
FROM python:3.12-slim

WORKDIR /flask-app

COPY . .

RUN pip install --no-cache-dir flask redis

EXPOSE 5003

CMD ["python", "flask-app.py"]
