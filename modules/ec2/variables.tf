variable "ami_id" {
  description = "AMI ID to use for both EC2 instances"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 key pair name assigned to both instances"
  type        = string
}

variable "public_instance_type" {
  description = "Instance type for the public EC2 instance"
  type        = string
}

variable "private_instance_type" {
  description = "Instance type for the private EC2 instance"
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

variable "public_security_group_id" {
  description = "ID of the public instance security group"
  type        = string
}

variable "private_security_group_id" {
  description = "ID of the private instance security group"
  type        = string
}
