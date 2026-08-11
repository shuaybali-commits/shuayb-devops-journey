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



# Managing Files


variable "userdata_file" {
  type        = string
  default     = "user_data.sh"
}

resource "aws_instance" "file_example" {
  ami           = "ami-test"
  instance_type = "t2.micro"

  # We read the file contents and pass them in as user_data
  user_data = file(var.userdata_file)

  tags = {
    Name = "file-example"
  }
}
