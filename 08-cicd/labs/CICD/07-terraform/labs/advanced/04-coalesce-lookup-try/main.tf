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


# Coalesce







# Setting Default Values


# variable "user_defined_name" {
#   type    = string
#   default = "" # or null
# }

# resource "aws_instance" "my_instance" {
#  ami           = "ami-test"
#  instance_type = "t2.micro"

# # There's no 'name' attribute, so define Name in tags:
#  tags = {
#    Name = coalesce(var.user_defined_name, "generic-name")
#  }
# }

# `terraform plan` with default settings => instance named my-generic-instance-name.
# `terraform plan -var="user_defined_name=CustomName"` => instance named CustomName.


## terraform plan -var"user_defined_name=CustomName"


# Providing Missing Values


# data "external" "my_data" {
#   program = ["python3", "${path.module}/script.py"]
#   query = {
#     name = "some_api"
#   }
# }

# resource "aws_instance" "my_resource" {
#   ami           = "ami-test"
#   instance_type = "t2.micro"

# # Instead of name / description at the top level, we put both in tags:
#   tags = {
#     Name = coalesce(lookup(data.external.my_data.result, "id", "fallback-name"), "fallback-name")
#     Description = coalesce(lookup(data.external.my_data.result, "description", "No description available"), "No description available")
#   }
# }



# Prioritising different values


# Let's say config.json has a key called "my_setting",
# environment variable has another, or we fall back to a default

variable "environment_setting" {
  type    = map (string)
  default = {
    }
}
locals {
  config_file_value = try(
    jsondecode(file("${path.module}/config.json"))["my_setting"],
    null
  )

environment_value = lookup(var.environment_setting, "my_setting", null)
}

resource "null_resource" "example_config" {
  triggers = {
    setting_in_use = coalesce(
      local.config_file_value,
      local.environment_value,
      "default_value"
    )
  }
}
