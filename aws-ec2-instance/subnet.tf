# Create the subnet for the newly created VPC
resource "aws_subnet" "test-terraform-sub" {
  vpc_id = aws_vpc.test-terraform-vpc.id
  availability_zone = var.availability_zone
  cidr_block = var.subnet_cidr_block
  tags = {
    Name = "test-terraform-sub"
  }
}

# Create the route table
resource "aws_route_table" "test-terraform-rt" {
  vpc_id = aws_vpc.test-terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-terraform-gw.id
  }

  tags = {
    Name = "test-terraform-rt"
  }
}

# Associate the route table to the subnet
resource "aws_route_table_association" "test-terraform-subasso" {
  subnet_id = aws_subnet.test-terraform-sub.id
  route_table_id = aws_route_table.test-terraform-rt.id
}