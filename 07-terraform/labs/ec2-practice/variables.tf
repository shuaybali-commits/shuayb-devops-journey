variable "instance_type" {
    type = string
    default = "t3.micro"
}
locals {
  instance_ami = "ami-0ec10929233384c7f"
}

output "instance_id" {
  value = aws_instance.import.id
  description = "The ID of the EC2 Instance"
}

