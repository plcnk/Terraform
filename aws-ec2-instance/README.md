# EC2 instance deployment with Terraform

This project automates the deployment of one AWS EC2 instance in a new environment (new VPC, subnet, gateway etc...).

## Prerequisites

* Linux Operating System
* [HashiCorp Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* [HashiCorp Vault](https://learn.hashicorp.com/tutorials/vault/getting-started-install) with an AWS Secrets Engine configured
* Edited **vault_address**, **vault_token** & **ssh_key_location** variables in `terraform.tfvars` file

## Default Region & AMI

This script uses the **Ireland** (**eu-west-1**) region by default and the **Ubuntu 20.04** AMI from this region.

AMI IDs from the Ireland region:

* **Ubuntu 20.04**: ami-0a8e758f5e873d1c1
* **Amazon Linux 2**: ami-05cd35b907b4ffe77
* **RHEL 8**: ami-0ec23856b3bad62d3
* **SUSE Enterprise 15**: ami-00b5dfb1b867959fd

## Allowed Ports

By default, this script creates a Security Group that **allows SSH from Everywhere** on the instance.

## Usage

To use this Terraform script, you first need to initialize the plugins by running the command:

```shell
terraform init
```

Next, you can plan the infrastructure:

```shell
terraform plan -out=tf.plan
```

Then, deploy the infrastructure using:

```shell
terraform apply tf.plan
```

To delete the whole infrastructure, run the command:

```shell
terraform destroy
```
