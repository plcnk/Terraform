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
  image      = var.image
  name       = var.name
  region     = var.region
  size       = var.size
  ssh_keys   = [var.ssh_key_fingerprint]
  monitoring = true
  ipv6       = true
}
