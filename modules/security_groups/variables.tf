variable "vpc_id" {
  description = "ID of the VPC in which to create the security groups"
  type        = string
}

variable "ssh_cidr" {
  description = "Optional IPv4 CIDR allowed to SSH to the public instance"
  type        = string
  default     = null
  nullable    = true
}
