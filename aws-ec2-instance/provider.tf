# Configure the AWS provider

terraform {
  required_providers {
    source = "hashicorp/aws"
    aws    = "~> 3.0"
  }

}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}
