variable "instance_type" {
    type = string
    default = "t3.micro"
}

locals {
  instance_ami = "ami-0224ce6f9504665ee"
}

output "instance_id" {
  description = "The ID of the EC2 Instance"
  value = aws_instance.this.id
}
