resource "aws_instance" "public" {
  ami                         = var.ami_id
  instance_type               = var.public_instance_type
  subnet_id                   = var.public_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.public_security_group_id]

  tags = {
    Name = "terraform-public-instance"
  }
}

resource "aws_instance" "private" {
  ami                         = var.ami_id
  instance_type               = var.private_instance_type
  subnet_id                   = var.private_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = false
  vpc_security_group_ids      = [var.private_security_group_id]

  tags = {
    Name = "terraform-private-instance"
  }
}
