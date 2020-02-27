# Create the VPC for the ec2 instance
resource "aws_vpc" "test-terraform-vpc" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"
  tags = {
    Name = "test-terraform-vpc"
  }
}

# Create the internet gateway
resource "aws_internet_gateway" "test-terraform-gw" {
  vpc_id = aws_vpc.test-terraform-vpc.id
  tags = {
    Name = "test-terraform-gw"
  }
}