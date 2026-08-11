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



# Concat


locals {
  list_one = ["dev", "test"]
  list_two = ["prod", "staging"]

  merged_list = concat(local.list_one, local.list_two)
}

resource "null_resource" "concat_example" {
  triggers = {
    all_envs = join(", ", local.merged_list)
  }
}
