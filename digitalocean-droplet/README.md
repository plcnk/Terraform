# DigitalOcean Droplet deployment with Terraform

This project automates the deployment of one DigitalOcean Droplet.

## Prerequisites

* Linux Operating System
* Terraform (tested with v1.0.9)
* Edited **api_token** & **ssh_key_fingerprint** variables in `terraform.tfvars` file.

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
