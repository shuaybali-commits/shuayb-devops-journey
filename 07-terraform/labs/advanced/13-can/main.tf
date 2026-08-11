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



# Can


# Lets imagine we have a variable that may or may not be a valid JSON
variable "possible_json" {
  type = string
  # default = "{\"key\":\"value\"}" # could be invalid
}
locals {
  decode_ok = can(jsondecode(var.possibl_json))
  # Returns true if jsondecode succeeds, otherwise fails.
  final_value = local.decode_ok ? "Valid JSON!" : "Oops, invalid JSON, falling back."
}

resource "null_resource" "can_example" {
  triggers = {
    outcome = local.final_value
  }
}
