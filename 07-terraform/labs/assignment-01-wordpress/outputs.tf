output "instance_id" {
  description = "WordPress EC2 instance ID"
  value       = aws_instance.wordpress.id
}

output "public_ip" {
  description = "Public IP address"
  value       = aws_instance.wordpress.public_ip
}

output "wordpress_url" {
  description = "WordPress public URL"
  value       = "http://${aws_instance.wordpress.public_ip}"
}

