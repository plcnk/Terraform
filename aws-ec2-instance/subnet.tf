# Create the subnet for the newly created VPC
resource "aws_subnet" "terraform-sub" {
  vpc_id = aws_vpc.terraform-vpc.id
  availability_zone = var.availability_zone
  cidr_block = var.subnet_cidr_block
  tags = {
    Name = var.subnet_name
  }
}

# Create the route table
resource "aws_route_table" "terraform-rt" {
  vpc_id = aws_vpc.terraform-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform-gw.id
  }

  tags = {
    Name = var.route_table_name
  }
}

# Associate the route table to the subnet
resource "aws_route_table_association" "terraform-subasso" {
  subnet_id = aws_subnet.terraform-sub.id
  route_table_id = aws_route_table.terraform-rt.id
}