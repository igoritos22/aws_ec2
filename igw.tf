resource "aws_internet_gateway" "igw_lab" {
  vpc_id = aws_vpc.vpc_lab.id
  tags   = local.common_tags
}