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






variable "region" {
  type    = list(string)
  default = ["eu-west-2", "eu-west-1"]
}

locals {
  # Transform each region into "region-dev"
  dev_regions = [for r in var.region : "${r}-dev"]
}

resource "null_resource" "for_expression" {
  triggers = {
    all_devs = join(",", local.dev_regions)
  }
}
