# =====================================================
# PUBLIC EC2
# =====================================================

resource "aws_instance" "public" {

  ami = local.ami_id

  instance_type = var.instance_type

  subnet_id = var.public_subnet_id

  key_name = var.key_name

  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  tags = {
    Name = "public-ec2"

    Tier = "Web"
  }
}


# =====================================================
# PRIVATE EC2
# =====================================================

resource "aws_instance" "private" {

  ami = local.ami_id

  instance_type = var.instance_type

  subnet_id = var.private_subnet_id

  key_name = var.key_name

  associate_public_ip_address = false

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  tags = {
    Name = "private-ec2"

    Tier = "Application"
  }
}

