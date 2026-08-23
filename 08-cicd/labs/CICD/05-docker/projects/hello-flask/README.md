# Hello Flask

## Overview

A simple Flask application containerised with Docker to demonstrate the core concepts of building, running and managing containers.

---

## Objectives

- Containerise a Flask application
- Build and run Docker images
- Use Docker Compose
- Apply Docker best practices

---

## Architecture

```text
Browser
    │
    ▼
Flask Container
```

---

## Technologies Used

- Docker
- Docker Compose
- Python
- Flask

---

## Project Structure

```text
hello-flask/
├── app.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── screenshots/
```

---

## Docker Concepts Demonstrated

- Images & Containers
- Dockerfiles
- Docker Compose
- Layer Caching
- Environment Variables
- Health Checks
- Non-root Containers
- Port Mapping

---

## Build & Run

```bash
docker compose up -d
```

Open:

```text
http://localhost:5000
```

---

## Screenshots

- Homepage
- Running Container
- Docker Compose
- Docker Images

