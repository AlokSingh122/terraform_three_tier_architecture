output "nat_gateway_id" {
  description = "ID of the NAT gateway"
  value       = aws_nat_gateway.this.id
}

output "nat_gateway_public_ip" {
  description = "Public IP address allocated to the NAT gateway"
  value       = aws_eip.nat.public_ip
}
