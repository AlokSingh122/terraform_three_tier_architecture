moved {
  from = aws_vpc.my_vpc
  to   = module.vpc.aws_vpc.this
}

moved {
  from = aws_subnet.public_subnet
  to   = module.subnet.aws_subnet.public
}

moved {
  from = aws_subnet.private_subnet
  to   = module.subnet.aws_subnet.private
}

moved {
  from = aws_internet_gateway.my_igw
  to   = module.internet_gateway.aws_internet_gateway.this
}

moved {
  from = aws_security_group.public_sg
  to   = module.security_groups.aws_security_group.public
}

moved {
  from = aws_security_group.private_sg
  to   = module.security_groups.aws_security_group.private
}

moved {
  from = aws_eip.nat_eip
  to   = module.nat_gateway.aws_eip.nat
}

moved {
  from = aws_nat_gateway.nat_gw
  to   = module.nat_gateway.aws_nat_gateway.this
}

moved {
  from = aws_route_table.public_route_table
  to   = module.route_table.aws_route_table.public
}

moved {
  from = aws_route_table.private_route_table
  to   = module.route_table.aws_route_table.private
}

moved {
  from = aws_route_table_association.public_route_table_association
  to   = module.route_table.aws_route_table_association.public
}

moved {
  from = aws_route_table_association.private_route_table_association
  to   = module.route_table.aws_route_table_association.private
}

moved {
  from = aws_instance.public_instance
  to   = module.compute.aws_instance.public
}

moved {
  from = aws_instance.private_instance
  to   = module.compute.aws_instance.private
}
