# Flask + Redis + NGINX (Docker Compose)

## 📌 Overview

This project is a multi-container application built using Docker Compose.

It demonstrates how to run a scalable web application using:
- **Flask** (application layer)
- **Redis** (data store)
- **NGINX** (reverse proxy and load balancer)

---

## 🏗️ Architecture

Client (Browser)  
→ NGINX (Reverse Proxy / Load Balancer)  
→ Flask (Multiple Containers)  
→ Redis (Data Store)  

---

## 🚀 Features

- Multi-container setup using Docker Compose  
- Load balancing with NGINX  
- Redis-backed visit counter  
- Environment variable configuration  
- Persistent storage using Docker volumes  
- Horizontal scaling of Flask containers  

---

## 🌐 Endpoints

- `/` → Welcome message  
- `/count` → Tracks number of visits using Redis  

---

## ▶️ How to Run

```bash
docker compose up --scale web=3 --build -d
