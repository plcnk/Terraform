# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.0"
    }
  }

}

provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

data "vault_aws_access_credentials" "aws-creds" {
  backend = var.vault_aws_path
  role    = var.vault_aws_iam_role
}

provider "aws" {
  access_key = data.vault_aws_access_credentials.aws-creds.access_key
  secret_key = data.vault_aws_access_credentials.aws-creds.secret_key
  region     = var.region
}
