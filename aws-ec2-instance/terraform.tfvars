# Provider Variables
access_key = "XXXXXXXXXXXXXXXXXXX"
secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
region     = "eu-west-1"

# Network Variables
vpc_name       = "terraform-vpc"
vpc_cidr_block = "10.1.0.0/16"

# Subnet variables
subnet_name       = "terraform-sub"
route_table_name  = "terraform-rt"
availability_zone = "eu-west-1a"
subnet_cidr_block = "10.1.0.0/24"

# Gateway variables
gateway_name = "terraform-gw"

# Instance variables
instance_name = "Terraform-Test-01"
ami           = "ami-099a8245f5daa82bf"
ssh_key_name  = "admin"
instance_type = "t2.micro"
volume_size   = "8"
volume_type   = "gp2"