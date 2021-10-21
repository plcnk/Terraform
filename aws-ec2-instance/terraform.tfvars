# Provider Variables
access_key = "XXXX" # Edit this
secret_key = "XXXX" # Edit this
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
instance_name    = "Terraform-Test-01"
ami              = "ami-0a8e758f5e873d1c1"
ssh_key_name     = "admin"
ssh_key_location = "~/.ssh/id_rsa.pub" # Edit this
instance_type    = "t2.micro"
volume_size      = "8"
volume_type      = "gp2"