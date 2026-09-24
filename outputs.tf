output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = module.vpc.private_subnet_id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = module.vpc.internet_gateway_id
}

output "public_route_table_id" {
  description = "Public route table ID"
  value       = module.vpc.public_route_table_id
}

output "private_route_table_id" {
  description = "Private route table ID"
  value       = module.vpc.private_route_table_id
}

output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = module.vpc.nat_gateway_id
}

output "public_ec2_id" {
  description = "Public EC2 instance ID"
  value       = module.ec2.public_instance_id
}

output "public_ec2_public_ip" {
  description = "Public EC2 public IP"
  value       = module.ec2.public_instance_public_ip
}

output "public_ec2_private_ip" {
  description = "Public EC2 private IP"
  value       = module.ec2.public_instance_private_ip
}

output "private_ec2_id" {
  description = "Private EC2 instance ID"
  value       = module.ec2.private_instance_id
}

output "private_ec2_private_ip" {
  description = "Private EC2 private IP"
  value       = module.ec2.private_instance_private_ip
}