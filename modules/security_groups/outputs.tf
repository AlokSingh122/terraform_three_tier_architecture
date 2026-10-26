output "public_security_group_id" {
  description = "ID of the public instance security group"
  value       = aws_security_group.public.id
}

output "private_security_group_id" {
  description = "ID of the private instance security group"
  value       = aws_security_group.private.id
}
