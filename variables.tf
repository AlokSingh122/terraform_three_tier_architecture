variable "aws_region" {
  description = "AWS region"
  type        = string
  
}

variable "project_name" {
  description = "Project name"
  type        = string
  
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
  
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
  
}

variable "ami_id" {
  description = "Optional AMI ID override; null uses the latest Amazon Linux 2023 AMI"
  type        = string

}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
  
}

variable "create_nat_gateway" {
  description = "Create NAT Gateway"
  type        = bool
  
}