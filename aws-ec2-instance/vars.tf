# Vault variables
variable "vault_address" {}
variable "vault_token" {}
variable "vault_aws_path" {}
variable "vault_aws_iam_role" {}

# Provider variables
variable "region" {}

#Network variables
variable "vpc_name" {}
variable "vpc_cidr_block" {}

# Subnet variables
variable "subnet_name" {}
variable "route_table_name" {}
variable "availability_zone" {}
variable "subnet_cidr_block" {}

# Gateway variables
variable "gateway_name" {}

# Instance variables
variable "instance_name" {}
variable "ami" {}
variable "ssh_key_name" {}
variable "ssh_key_location" {}
variable "instance_type" {}
variable "volume_size" {}
variable "volume_type" {}
