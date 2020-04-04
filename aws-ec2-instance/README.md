# EC2 instance deployment with Terraform

This project automates the deployment of one AWS EC2 instance in a new environment (new VPC, subnet, gateway etc...).

## Prerequisites

* Linux Operating System
* Terraform (tested with v0.12.24)
* Edited **access_key** & **secret_key** variables in **terraform.tfvars**
* Public SSH key in your **~/.ssh** folder named **id_rsa.pub**

## Usage

To use this Terraform script, you first need to initialize the plugins by running the command:

```shell
terraform init
```

Next, you can run the script by using the command:

```shell
terraform apply
```

To delete the whole infrastructure, run the command:

```shell
terraform destroy
```