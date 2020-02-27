# Provider variables
variable "access_key" {
  default = "XXXXXXXXXXXXXXXXXXXX"
}

variable "secret_key" {
  default = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

variable "region" {
  default = "eu-west-1"
}

#Network variable
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

# Subnet variables
variable "availability_zone" {
  default = "eu-west-1a"
}

variable "subnet_cidr_block" {
  default = "10.0.1.0/24"
}

# Instance variables
variable "ami" {
  default = "ami-099a8245f5daa82bf"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "volume_size" {
  default = 8
}

variable "volume_type" {
  default = "gp2"
}

variable "instance_count" {
  default = 4
}
