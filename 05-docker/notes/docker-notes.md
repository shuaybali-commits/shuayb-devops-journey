# Docker Basics

## Overview
Docker is a platform used to build, run, and manage containerised applications.

---

## Containers

- Lightweight, portable environments that run applications  
- Include everything needed (code, dependencies, runtime)  

### Benefits

- Consistent across environments  
- Fast startup time  
- Efficient resource usage  
- Easy to scale  

---

## Container Structure

- Infrastructure (hardware / cloud)  
- Host Operating System  
- Docker Engine  
- Docker Containers  

---

## Docker Components

- **Docker Engine** → runs and manages containers  
- **Docker Hub** → registry for storing and sharing images  

---

## Images

- Read-only templates used to create containers  
- Built from Dockerfiles  

---

## Dockerfile

- A script containing instructions to build an image  

### Common Instructions

- `FROM` → base image  
- `RUN` → execute commands  
- `COPY` → copy files into image  
- `WORKDIR` → set working directory  
- `CMD` → default command to run  

### Example Flow

- Start from base image  
- Install dependencies  
- Copy application code  
- Set working directory  
- Run application  

---

## Virtual Machines vs Containers

- **VMs** → include full OS, heavier  
- **Containers** → share OS, lightweight  

---

## Containerising an App

- Write Dockerfile  
- Build image  
- Run container  
- Expose ports  

---

## Docker Networking

- **Bridge** → default network for containers  
- **Host** → shares host network  
- **None** → no networking  

---

## Linking Containers

- Containers communicate using names  
- Enables multi-service applications  

---

## Docker Compose

Used to define and run multi-container applications.

### Key Concepts

- `services` → defines containers  
- `build` → build image  
- `ports` → map ports  
- `volumes` → persistent storage  
- `environment` → variables  

---

## Docker Registries

- Store and distribute Docker images  

### Benefits

- Version control for images  
- Easy sharing and deployment  
- Centralised storage  

---

## Common Commands

- `docker images` → list images  
- `docker inspect` → detailed info  
- `docker ps` → list containers  
- `docker system` → manage resources  
- `docker rm` → remove container  

---

## Docker Swarm vs Kubernetes

- **Docker Swarm** → simple orchestration, easier setup  
- **Kubernetes** → advanced orchestration, more scalable and widely used  
