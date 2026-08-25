# Hello Flask

## Purpose

Demonstrate the fundamentals of containerising a web application using Docker and Docker Compose.

## Overview

A simple Flask application containerised with Docker to demonstrate the core concepts of building, running and managing containers.

---

## Features

- Single-container Flask application
- Docker image creation using a Dockerfile
- Docker Compose orchestration
- Port mapping between the host and container

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
