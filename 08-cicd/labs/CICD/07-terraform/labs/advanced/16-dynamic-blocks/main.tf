terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "aws" {
  access_key                     = "test"
  secret_key                     = "test"
  region                         = "eu-west-2"
  skip_credentials_validation    = true
  skip_requesting_account_id     = true

  endpoints {
    ec2 = "http://localhost:4566"
  }
}



# Dynamic Blocks


# List of ports we want to allow. We'll auto-describe them in a for expression.
variable "ports" {
  type = list(number)
  default = [22, 80, 443]
}

# Build a list of objects from the ports, each with:
# - from_port, to_port, protocol, and a description (based on the port).
locals {
  ingress_rules = [
    for p in var.ports : {
      description = p == 22 ? "SSH" : p == 80 ? "HTTP" : p == 443 ? "HTTPS" : "Other"
      from_port = p
      to_port = p
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

resource "aws_security_group" "dynamic_sg" {
  name = "dynamic-block-sg"
  description = "Security Group using dynamic blocks"
  vpc_id = "vpc-123456" # Localstack won't validate this

  dynamic "ingress" {
    for_each = local.ingress_rules
    content {
      description = ingress.value.description
      from_ port = ingress.value.from_port
      to_port = ingress.value.to_port
      protocol = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
}
