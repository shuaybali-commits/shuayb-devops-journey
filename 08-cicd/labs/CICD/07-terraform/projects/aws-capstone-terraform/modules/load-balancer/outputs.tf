output "target_group_arn" {
  value = aws_lb_target_group.app.arn
}

output "load_balancer_dns" {
  value = aws_lb.app.dns_name
}

