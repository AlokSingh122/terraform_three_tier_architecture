output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.subnet.public_subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = module.subnet.private_subnet_id
}

output "public_instance_id" {
  description = "ID of the public EC2 instance"
  value       = module.compute.public_instance_id
}

output "public_instance_public_ip" {
  description = "Public IP address of the public EC2 instance"
  value       = module.compute.public_instance_public_ip
}

output "private_instance_id" {
  description = "ID of the private EC2 instance"
  value       = module.compute.private_instance_id
}

output "private_instance_private_ip" {
  description = "Private IP address of the private EC2 instance"
  value       = module.compute.private_instance_private_ip
}

output "nat_gateway_public_ip" {
  description = "Public IP address allocated to the NAT gateway"
  value       = module.nat_gateway.nat_gateway_public_ip
}