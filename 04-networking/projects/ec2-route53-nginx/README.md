# EC2 + Route 53 + NGINX Multi-Site Hosting

## Overview

This project demonstrates how to host multiple websites on a single AWS EC2 instance using NGINX virtual hosts and Route 53 DNS.

The solution combines AWS networking, DNS configuration and Linux server administration to host multiple domains from a single web server.

---

## Technologies

- AWS EC2 (Ubuntu)
- Route 53
- NGINX
- Linux
- SSH
- Security Groups

---

## Architecture

```
                 Internet
                     │
                     ▼
              Route 53 DNS
                     │
                     ▼
              AWS EC2 Instance
                     │
                     ▼
          NGINX Virtual Hosts
          ├── shuaybali.com
          └── projects.shuaybali.com
```

---

## Features

- Deployed an Ubuntu EC2 instance on AWS
- Configured Security Groups for HTTP and SSH access
- Installed and configured NGINX
- Created multiple NGINX virtual hosts
- Configured Route 53 DNS records
- Hosted multiple websites from a single server

---

## Skills Demonstrated

- AWS EC2
- Route 53
- DNS Configuration
- Linux Administration
- SSH
- NGINX Configuration
- Virtual Hosts
- Networking Fundamentals

---

## Security

- HTTP (Port 80) exposed to the internet
- SSH (Port 22) restricted to my public IP address using a `/32` CIDR block
- NGINX configuration validated before deployment using:

```bash
sudo nginx -t
```

---
