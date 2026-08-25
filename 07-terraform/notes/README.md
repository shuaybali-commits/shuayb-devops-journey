# Terraform Basics

## Purpose

These notes provide a quick reference to the core Terraform concepts, workflows and Infrastructure as Code principles used throughout the DevOps learning journey.

## Overview

Terraform is a tool used to provision and manage infrastructure using code.

---

## Infrastructure as Code (IaC)

- Managing infrastructure through code instead of manual setup  

- Automation  
- Consistency  
- Reusability  
- Version control  

---

## Terraform Fundamentals

- Used to define and provision infrastructure  
- Works across multiple cloud providers  

- Repeatable deployments  
- Scalable infrastructure  
- Easy to manage changes  

---

## Key Concepts

### Desired State vs Current State

- **Desired state** → what you define in code  
- **Current state** → actual infrastructure  
- Terraform works to match current state to desired state  

---

### Terraform State File

- Stores information about infrastructure  

Types:

- **Local state** → stored on local machine

- **Remote state** → stored remotely (e.g. S3)  

---

### Idempotency

- Running the same code multiple times produces the same result  

---

## Terraform Workflow

- `terraform init` → initialise project  
- `terraform plan` → preview changes  
- `terraform apply` → apply changes  
- `terraform destroy` → remove infrastructure  

---

## Providers and Registry

- **Provider** → connects Terraform to services (e.g. AWS)  
- **Terraform Registry** → collection of providers and modules  

---

## Resource Block

- Defines infrastructure components  

Example:

- resource = type + name + configuration  

---

## Modules

- Reusable blocks of Terraform configuration  
- Used to organise and simplify infrastructure  

- Reusability  
- Cleaner code  
- Easier management of large projects  

### Types

- **Local modules** → stored in your project  
- **Remote modules** → pulled from Terraform Registry or Git  

---

## Variables

### Types of Variables

- **Input variables** → passed into Terraform  
- **Local variables** → internal values  
- **Output variables** → values returned after execution  

---

### Variable Hierarchy

Order of precedence:

1. Command line  
2. `.tfvars` files  
3. Environment variables  
4. Default values  

---

### Variable Types

- string  
- number  
- bool  
- list  
- map  
- object  

---

### Best Practices

- Use variables for flexibility  
- Avoid hardcoding values  
- Use descriptive names  
- Keep configurations reusable  

---

## Orchestration vs Configuration Management

- **Orchestration** → manages infrastructure (Terraform)  
- **Configuration Management** → manages software on systems (e.g. Ansible)  

---

## Development Approach

- Use documentation  
- Test and validate changes  
- Start with small MVP  
- Follow DRY (Don’t Repeat Yourself) principles  
