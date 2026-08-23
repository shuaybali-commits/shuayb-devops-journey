# EC2 + Route 53 + NGINX Multi-Site Hosting

## Overview

This project demonstrates how to host multiple websites on a single AWS EC2 instance using NGINX virtual hosts and Route 53 DNS.

The solution uses:

- AWS EC2 (Ubuntu)
- Route 53 DNS
- NGINX Web Server
- Linux CLI
- Security Groups

## Architecture

Internet
↓
Route 53
↓
EC2 Instance
↓
NGINX Virtual Hosts
├── shuaybali.com
└── projects.shuaybali.com

## What I Built

- Launched an Ubuntu EC2 instance
- Configured Security Groups for HTTP and SSH
- Installed and configured NGINX
- Created two NGINX server blocks
- Configured Route 53 DNS records
- Hosted two websites from a single server

## Skills Demonstrated

- AWS EC2
- Route 53
- DNS Records
- Linux Administration
- SSH
- NGINX Configuration
- Virtual Hosts
- Networking Fundamentals

## Security

- HTTP access allowed from the internet
- SSH restricted to my public IP address using a /32 CIDR block
- NGINX configuration validated before deployment using:

```bash
sudo nginx -t
