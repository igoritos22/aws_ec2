resource "aws_subnet" "sub_lab_pub" {
  cidr_block        = cidrsubnet(aws_vpc.vpc_lab.cidr_block, 8, 2)
  vpc_id            = aws_vpc.vpc_lab.id
  availability_zone = "${var.availability_zone}a"
  map_public_ip_on_launch = true
  tags              = local.common_tags
}

resource "aws_subnet" "sub_lab_pvt" {
  cidr_block        = cidrsubnet(aws_vpc.vpc_lab.cidr_block, 8, 1)
  vpc_id            = aws_vpc.vpc_lab.id
  availability_zone = "${var.availability_zone}b"
  map_public_ip_on_launch = false
  tags              = local.common_tags
}

