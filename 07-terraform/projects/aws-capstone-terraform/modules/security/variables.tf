variable "project_name" {
  description = "Project name used for naming resources"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where security groups will be created"
  type        = string
}

variable "common_tags" {
  description = "Common tags applied to security groups"
  type        = map(string)
}

variable "bastion_allowed_cidr" {
  description = "CIDR allowed to SSH to the bastion host"
  type        = string
}

