# Flask + Redis + NGINX

## Purpose

Demonstrate how multiple containerised services communicate using Docker Compose while introducing reverse proxying with NGINX and in-memory data storage with Redis.

## Overview

A multi-service application demonstrating how NGINX, Flask and Redis work together using Docker Compose. NGINX acts as a reverse proxy, Flask serves the application, and Redis provides an in-memory data store.

---

## Features

- Multi-service application
- NGINX reverse proxy
- Flask web application
- Redis integration
- Docker Compose orchestration

---

## Architecture

```text
Browser
    │
    ▼
NGINX
    │
    ▼
Flask Container
    │
    ▼
Redis Container
```

---

## Technologies Used

- Docker
- Docker Compose
- Python
- Flask
- Redis
- NGINX

---

## Project Structure

```text
flask-redis-nginx/
├── app.py
├── Dockerfile
├── docker-compose.yml
├── nginx.conf
├── requirements.txt
└── screenshots/
```

---

## Docker Concepts Demonstrated

- Multi-service Architecture
- Reverse Proxy
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
http://localhost:5003
```
