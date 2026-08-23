# AWS Basics

## Overview
Cloud computing is the delivery of computing resources (servers, storage, networking) over the internet.

---

## What is AWS

Amazon Web Services (AWS) is a cloud platform providing on-demand infrastructure and services.

### Global Infrastructure

- **Region** → geographic area (e.g. eu-west-1)  
- **Availability Zone (AZ)** → isolated data centre within a region  
- **Edge Location / PoP** → used for content delivery (CloudFront)  

---

## Core Concepts

### Compute

Provides processing power to run applications.

---

## Identity & Access Management (IAM)

Controls access to AWS resources.

### Components

- Root user  
- Users  
- Groups  
- Roles  

### Policies

- Managed policies  
- Inline policies  

### Policy Structure

- Version  
- Statement  
- Effect (Allow / Deny)  
- Action  
- Resource  
- Condition  

### Key Concepts

- Access keys (programmatic access)  
- Least privilege principle  
- Permission inheritance via groups  

### Security Tools

- IAM Credential Reports  
- IAM Access Advisor  

### Best Practices

- Avoid using root account  
- Use roles instead of access keys where possible  
- Apply least privilege  
- Rotate credentials regularly  

---

## Compute Services

- **EC2** → virtual servers  
- **Lambda** → serverless compute  
- **ECS / EKS** → container orchestration  
- **Fargate** → serverless containers  

---

## EC2

### Instance Types

- General purpose  
- Compute optimised  
- Memory optimised  
- Storage optimised  
- Accelerated computing  

### Purchasing Options

- On-demand  
- Reserved instances  
- Savings plans  
- Spot instances  
- Dedicated hosts / instances  
- Capacity reservations  

---

## Storage (related to compute)

- **EBS** → block storage for EC2  
- **EFS** → shared file storage  

---

## Networking

### VPC (Virtual Private Cloud)

- Isolated network in AWS  

### Components

- Subnets (public / private)  
- Internet Gateway (IGW)  
- Bastion host  
- Route tables  
- Security groups (stateful)  
- NACLs (stateless)  

### Key Concepts

- CIDR → defines IP range  
- Public vs private IP  
- Elastic IP → static public IP  

---

### NAT

- Allows private instances to access the internet  

- **NAT Gateway** → managed, scalable  
- **NAT Instance** → self-managed  

---

### Endpoints

- Connect privately to AWS services without internet  

Types:
- Interface endpoints  
- Gateway endpoints  

---

## DNS & Route 53

### DNS Basics

- Translates domain names to IP addresses  

### Key Components

- Registrar  
- Name servers  
- Hosted zone  
- Zone file  

### Records

- A / AAAA  
- CNAME  
- NS  

### Other Concepts

- TLD / SLD  
- TTL  

---

### Route 53 Features

- Alias records  
- Health checks  

### Routing Policies

- Simple  
- Weighted  
- Latency-based  
- Geolocation  
- Geo-proximity  
- IP-based  
- Multi-value  
- Failover  

---

## Content Delivery Network (CDN)

- **CloudFront** → delivers content globally with low latency  

### Origins

- S3  
- ALB  
- EC2  

---

## Security

### Security Groups

- Stateful  
- Control inbound and outbound traffic  

### Common Ports

- FTP → 21  
- SSH → 22  
- DNS → 53  
- HTTP → 80  
- HTTPS → 443  
- RDP → 3389  

---

## Load Balancing

Distributes traffic across multiple resources.

### Types

- **ALB** → application layer (HTTP/HTTPS)  
- **NLB** → network layer (TCP/UDP)  
- **GLB** → gateway load balancer  
- **CLB** → classic (legacy)  

### Benefits

- High availability  
- Scalability  
- Fault tolerance  

---

## Auto Scaling (ASG)

- Automatically adjusts number of instances  

### Components

- Launch templates  
- Scaling policies  

---

## High Availability & Scalability

### High Availability

- Active / Active  
- Active / Passive  

### Scalability

- Vertical → increase instance size  
- Horizontal → add more instances  

---

## Serverless

### AWS Lambda

- Run code without managing servers  

### Benefits

- No infrastructure management  
- Automatic scaling  
- Pay-per-use  

---

## Containers

- **ECS** → AWS-managed container service  
- **EKS** → Kubernetes on AWS  
- **Fargate** → serverless container execution  

---

## Security (Encryption)

- **SSL / TLS** → encrypt data in transit  
