variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project name used for naming and tagging"
  type        = string
  default     = "aws-capstone"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner of the infrastructure"
  type        = string
  default     = "shuayb"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "bastion_allowed_cidr" {
  description = "CIDR allowed to SSH to the bastion host"
  type        = string
}


