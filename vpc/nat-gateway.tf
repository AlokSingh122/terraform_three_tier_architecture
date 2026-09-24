# =====================================================
# ELASTIC IP
# =====================================================

resource "aws_eip" "nat" {
  count = var.create_nat_gateway ? 1 : 0

  domain = "vpc"

  tags = {
    Name = "${var.project_name}-nat-eip"
  }
}


# =====================================================
# NAT GATEWAY
# =====================================================

resource "aws_nat_gateway" "main" {
  count = var.create_nat_gateway ? 1 : 0

  allocation_id = aws_eip.nat[0].id

  subnet_id = aws_subnet.public.id

  depends_on = [
    aws_internet_gateway.main
  ]

  tags = {
    Name = "${var.project_name}-nat-gateway"
  }
}


# =====================================================
# PRIVATE ROUTE TO NAT
# =====================================================

resource "aws_route" "private_nat" {
  count = var.create_nat_gateway ? 1 : 0

  route_table_id = aws_route_table.private.id

  destination_cidr_block = "0.0.0.0/0"

  nat_gateway_id = aws_nat_gateway.main[0].id
}