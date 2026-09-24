data "aws_security_group" "default" {
  vpc_id = var.vpc_id

  filter {
    name = "group-name"

    values = ["default"]
  }
}

resource "aws_security_group" "web" {
  name        = "${var.project_name}-web"
  description = "Allow HTTP traffic to the public EC2 instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-web-sg"
  }
}