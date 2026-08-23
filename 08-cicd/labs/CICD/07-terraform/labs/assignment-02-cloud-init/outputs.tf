output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.nginx.id
}

output "public_ip" {
  description = "EC2 public IP"
  value       = aws_instance.nginx.public_ip
}

output "website_url" {
  description = "NGINX website URL"
  value       = "http://${aws_instance.nginx.public_ip}"
}

