# Networking Basics

## Overview
Networking is the process of connecting computers and systems to communicate and share data.

---

## Networking in DevOps

- Enables communication between services and systems  
- Essential for cloud, containers, and distributed applications  
- Used for deployment, monitoring, and scaling  

---

## LAN vs WAN

- **LAN (Local Area Network)** → small network (home, office)  
- **WAN (Wide Area Network)** → large network (internet)  

---

## Networking Components

- **Switch** → connects devices within a network  
- **Router** → connects different networks  
- **Firewall** → controls and filters network traffic  

---

## IP Address

- Unique identifier for a device on a network  

### IPv4 vs IPv6

- **IPv4** → 32-bit, limited addresses (e.g. 192.168.1.1)  
- **IPv6** → 128-bit, larger address space  

---

## MAC Address

- Unique hardware identifier assigned to a device  
- Used for communication within a local network  

---

## Ports and Protocols

- **Port** → identifies a specific service (e.g. 80, 443)  
- **Protocol** → rules for communication (e.g. HTTP, HTTPS)  

---

## TCP vs UDP

- **TCP** → reliable, connection-based  
- **UDP** → faster, connectionless, no guarantee of delivery  

---

## OSI Model

- **Layer 1 – Physical** → cables, hardware  
- **Layer 2 – Data Link** → MAC addresses, switches  
- **Layer 3 – Network** → IP addresses, routing  
- **Layer 4 – Transport** → TCP/UDP  
- **Layer 5 – Session** → connection management  
- **Layer 6 – Presentation** → data formatting  
- **Layer 7 – Application** → user-facing services (HTTP, DNS)  

---

## DNS (Domain Name System)

- Translates domain names into IP addresses  

### Key Components

- **Name servers** → respond to DNS queries  
- **Zone files** → store DNS records  
- **Records** → A, CNAME, MX, etc.  
- **Registrar** → where domain is registered  
- **Hosting provider** → where services are hosted  

---

## Routing

- Process of sending data between networks  

### Components

- **Router** → directs traffic  
- **Routing table** → determines path  

### Types

- **Static routing** → manually defined  
- **Dynamic routing** → automatically updated  
- **Routing protocols** → OSPF, BGP  

---

## Subnetting / CIDR

- Dividing a network into smaller networks  
- **CIDR** → defines IP range (e.g. /24)  

---

## NAT (Network Address Translation)

- Translates private IP addresses to public ones  

### Types

- **Static NAT** → one-to-one mapping  
- **Dynamic NAT** → pool of IPs  
- **PAT** → multiple devices share one public IP  

---

## Troubleshooting Tools

- `traceroute` → shows path packets take  
- `nslookup` → queries DNS records  
