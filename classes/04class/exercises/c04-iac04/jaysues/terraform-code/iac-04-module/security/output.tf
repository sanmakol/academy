output "app_load_balancer_security_group_id" {
  value = aws_security_group.app_load_balancer_security_group.id
}
output "app_load_balancer_security_group_name" {
  value = aws_security_group.app_load_balancer_security_group.name
}