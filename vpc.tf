locals {
  common_tags = {
    Name = "lab_terraform"
    Environment = "laboratorio"
  }
}

resource "aws_vpc" "vpc_lab" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = local.common_tags
}