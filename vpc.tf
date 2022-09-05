resource "aws_vpc" "servervpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "Linux VPC"
  }
}