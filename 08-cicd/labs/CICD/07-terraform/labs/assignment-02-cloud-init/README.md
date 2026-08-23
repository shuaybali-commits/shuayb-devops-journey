# Assignment 02 – EC2 Deployment with Cloud-Init

## Objective

Deploy an EC2 instance using Terraform and configure it automatically using cloud-init.

## Resources Created

- EC2 Instance
- Security Group
- Ubuntu 24.04 AMI
- cloud-init configuration

## Terraform Files

- main.tf
- variables.tf
- outputs.tf
- cloud-init.yaml

## Deployment Process

1. terraform init
2. terraform fmt
3. terraform validate
4. terraform plan
5. terraform apply

## Outcome

Terraform successfully provisioned an EC2 instance and cloud-init automatically installed and configured NGINX.

## Screenshots

- Terraform Apply Complete
- Running NGINX Web Page

## What I Learned

- Using cloud-init with Terraform
- Passing cloud-init using user_data
- Automating EC2 configuration at launch

