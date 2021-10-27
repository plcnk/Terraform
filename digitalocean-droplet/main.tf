terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.api_token
}

resource "digitalocean_droplet" "test" {
  image      = "ubuntu-20-04-x64"
  name       = "test01"
  region     = "fra1"
  size       = "s-1vcpu-1gb"
  ssh_keys   = [var.ssh_key_fingerprint]
  monitoring = true
  ipv6       = true
}
