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



# Slice


variable "my_list" {
  type  = list(string)
  default = ["apple", "banana", "cherry", "date"]
}

locals {
  first_two = slice(var.my_list, 0, 2) # ["apple", "banana"]
  last_two = slice(var.my_list, 2, 4) # ["cherry", "date"]
}

resource "null_resource" "slice_example" {
  triggers = {
  outcome = local.first_two
  }
}
