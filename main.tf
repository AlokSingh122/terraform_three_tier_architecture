module "vpc" {
  source = "./vpc"

  project_name = var.project_name

  vpc_cidr = var.vpc_cidr

  public_subnet_cidr = var.public_subnet_cidr

  private_subnet_cidr = var.private_subnet_cidr

  availability_zone = var.availability_zone

  create_nat_gateway = var.create_nat_gateway
}


module "ec2" {
  source = "./ec2"

  project_name = var.project_name

  vpc_id = module.vpc.vpc_id

  public_subnet_id = module.vpc.public_subnet_id

  private_subnet_id = module.vpc.private_subnet_id

  ami_id = var.ami_id

  instance_type = var.instance_type

  key_name = var.key_name
}