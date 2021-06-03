resource "aws_security_group" "sg_lab" {
  name   = var.sg_name
  vpc_id = aws_vpc.vpc_lab.id
  tags   = local.common_tags

  ingress {
    cidr_blocks = var.cidr_blocks
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "allow-ssh"
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    description = "allow-http"
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    description = "allow-https"
  }

  ingress {
    cidr_blocks = var.cidr_blocks
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    description = "allow-container-test"
  }

  ingress {
      cidr_blocks = var.cidr_blocks
      from_port     = -1
      to_port       = -1
      protocol      = "icmp"
      description   = "allow-ping"  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow-all-traffic-out"
  }

}

