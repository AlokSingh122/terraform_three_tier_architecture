variable "vpc_id" {
  description = "ID of the VPC for the route tables"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet"
  type        = string
}

variable "private_subnet_id" {
  description = "ID of the private subnet"
  type        = string
}

variable "internet_gateway_id" {
  description = "ID of the internet gateway used by the public route"
  type        = string
}

variable "nat_gateway_id" {
  description = "ID of the NAT gateway used by the private route"
  type        = string
}
