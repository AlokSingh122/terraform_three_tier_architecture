variable "region" {
  description = "AWS region in which to deploy the architecture"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability zone for both subnets"
  type        = string
  default     = "ap-south-1a"
}

variable "key_name" {
  description = "Existing EC2 key pair name assigned to both instances"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for both EC2 instances; override for regions where the default AMI is unavailable"
  type        = string
  default     = "ami-01a00762f46d584a1"
}

variable "public_instance_type" {
  description = "Instance type for the public EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "private_instance_type" {
  description = "Instance type for the private EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "ssh_cidr" {
  description = "Optional IPv4 CIDR allowed to SSH to the public instance; SSH is closed when unset"
  type        = string
  default     = null
  nullable    = true

  validation {
    condition     = var.ssh_cidr == null || can(cidrnetmask(var.ssh_cidr))
    error_message = "ssh_cidr must be a valid IPv4 CIDR block or null."
  }
}
