# Assignment 01 – Deploy WordPress Using Terraform

## Objective

Deploy a WordPress website on AWS using Terraform.

## Resources Created

- EC2 Instance
- Security Group
- Ubuntu 24.04 AMI (via Terraform data source)
- User Data script to install:
  - Apache
  - MariaDB
  - PHP
  - WordPress

## Terraform Files

- main.tf
- variables.tf
- outputs.tf
- user-data.sh

## Deployment Process

1. terraform init
2. terraform fmt
3. terraform validate
4. terraform plan
5. terraform apply

## Outcome

Terraform successfully provisioned the EC2 instance and automatically installed WordPress using a user data script.

## Screenshots

- Terraform Apply Complete
- WordPress Dashboard

## What I Learned

- Deploying infrastructure with Terraform
- Using providers, resources and data sources
- Using variables and outputs
- Automating software installation with user_data
- Managing AWS infrastructure as code

