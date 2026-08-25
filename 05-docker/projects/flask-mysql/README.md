# Flask + MySQL

## Purpose

Demonstrate how Docker Compose enables multiple services to communicate, persist data and work together as a single application.

## Overview

A multi-container application demonstrating communication between a Flask web application and a MySQL database using Docker Compose.

---

## Features

- Multi-container application
- Communication between Flask and MySQL
- Docker networking
- Persistent database storage using Docker volumes
- Docker Compose orchestration

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
