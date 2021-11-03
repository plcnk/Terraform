# Create the VPC for the ec2 instance
resource "aws_vpc" "terraform-vpc" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"
  tags = {
    Name = var.vpc_name
  }
}

# Create the internet gateway
resource "aws_internet_gateway" "terraform-gw" {
  vpc_id = aws_vpc.terraform-vpc.id
  tags = {
    Name = var.gateway_name
  }
}