# Kubernetes Basics

## 📌 Overview

Kubernetes (K8s) is a container orchestration platform used to automate the deployment, scaling, and management of containerised applications.

It is widely used in DevOps to manage applications running in containers across clusters of machines.

---

## 🧠 Why Kubernetes?

- Automates container deployment  
- Handles scaling (up/down automatically)  
- Ensures high availability  
- Manages container networking and communication  
- Self-healing (restarts failed containers)  

---

## 🏗️ Key Concepts

### Cluster
A group of machines (nodes) that run containerised applications.

---

### Node
A machine (virtual or physical) that runs workloads.

- **Worker Node** → runs containers  
- **Control Plane** → manages the cluster  

---

### Pod
The smallest deployable unit in Kubernetes.

- Contains one or more containers  
- Containers share networking and storage  

---

### Deployment
Manages Pods and ensures the desired number are running.

- Handles updates and rollbacks  
- Enables scaling  

---

### Service
Exposes applications running in Pods.

Types:
- ClusterIP (internal)  
- NodePort (external access via node)  
- LoadBalancer (external via cloud provider)  

---

### Namespace
Used to organise and separate resources within a cluster.

---

## ⚙️ Basic Workflow

1. Define application using YAML  
2. Apply configuration:

```bash
kubectl apply -f app.yaml
