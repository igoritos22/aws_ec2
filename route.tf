resource "aws_route_table" "rt_lab" {
  vpc_id = aws_vpc.vpc_lab.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_lab.id
  }
}

resource "aws_route_table_association" "sub_assoc" {
  subnet_id      = aws_subnet.sub_lab_pub.id
  route_table_id = aws_route_table.rt_lab.id
}