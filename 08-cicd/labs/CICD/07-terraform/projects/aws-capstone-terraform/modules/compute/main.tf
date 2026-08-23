data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [var.bastion_sg_id]
  associate_public_ip_address = true

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project_name}-${var.environment}-bastion"
    }
  )
}

resource "aws_launch_template" "app" {
  name_prefix   = "${var.project_name}-${var.environment}-app-"
  image_id      = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  vpc_security_group_ids = [var.app_sg_id]

  user_data = base64encode(
    templatefile("${path.root}/templates/app-user-data.tftpl", {})
  )

  tag_specifications {
    resource_type = "instance"

    tags = merge(
      var.common_tags,
      {
        Name = "${var.project_name}-${var.environment}-app"
      }
    )
  }
}

