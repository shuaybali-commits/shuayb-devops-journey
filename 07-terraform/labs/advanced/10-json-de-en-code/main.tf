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






variable "raw_json" {
  type        = string
  default     = "raw.json"
}

locals {
  parsed = jsondecode(var."raw.json")
  reencoded = jsonencode({
    original_name = local.parsed.name
    extra_data = "something"
  })
}

resource "null_resource" "json_example" {
  triggers = {
    read_name = local.parsed.name
    read_reps = tostring(local.parsed.replicas)
    final_json = local.reencoded
  }
}
