# Flask + MySQL

## Overview

A multi-container application demonstrating communication between a Flask web application and a MySQL database using Docker Compose.

---

## Objectives

- Build a multi-container application
- Connect Flask to MySQL
- Use Docker networking and volumes
- Apply Docker best practices

---

## Architecture

```text
Browser
    │
    ▼
Flask Container
    │
    ▼
MySQL Container
```

---

## Technologies Used

- Docker
- Docker Compose
- Python
- Flask
- MySQL

---

## Project Structure

```text
flask-mysql/
├── app.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── screenshots/
```

---

## Docker Concepts Demonstrated

- Multi-container Applications
- Docker Networks
- Docker Volumes
- Service Discovery
- Environment Variables
- Health Checks
- Restart Policies
- Non-root Containers

---

## Build & Run

```bash
docker compose up -d
```

Open:

```text
http://localhost:5002
```

---

## Screenshots

- Homepage
- Docker Compose
- Running Containers
- Docker Volume

