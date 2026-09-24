variable "project_name" {
  description = "Project name"
  type        = string
  default     = "modular-architecture"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  type        = string
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}

variable "create_nat_gateway" {
  description = "Whether to create NAT Gateway"
  type        = bool

}