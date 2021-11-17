# DigitalOcean k8s cluster deployment with Terraform

This project automates the deployment of a DigitalOcean k8s cluster.

## Prerequisites

* Linux Operating System
* Terraform (tested with v1.0.9)
* Edited **api_token** variable in `terraform.tfvars` file.

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
