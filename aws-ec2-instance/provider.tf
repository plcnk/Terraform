# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "~> 2.0"
    }
  }

}

provider "vault" {
  address = "http://XXXX:8200"
  token   = "XXXX"
}

data "vault_aws_access_credentials" "aws-creds" {
  backend = "aws"
  role    = "terraform-role"
}

provider "aws" {
  access_key = data.vault_aws_access_credentials.aws-creds.access_key
  secret_key = data.vault_aws_access_credentials.aws-creds.secret_key
  region     = var.region
}
