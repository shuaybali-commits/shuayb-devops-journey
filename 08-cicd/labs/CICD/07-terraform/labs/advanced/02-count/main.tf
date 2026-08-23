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


# Count

resource "aws_instance" "example" {
  count         = 2
  ami           = "ami-test"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance-${count.index}"
  }

}
