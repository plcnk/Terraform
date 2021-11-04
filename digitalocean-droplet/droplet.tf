resource "digitalocean_droplet" "droplet1" {
  image      = var.image
  name       = var.name
  region     = var.region
  size       = var.size
  ssh_keys   = [var.ssh_key_fingerprint]
  monitoring = true
  ipv6       = true
}

output "droplet_priv_ip" {
  value       = digitalocean_droplet.droplet1.ipv4_address_private
  description = "This is the instance's private IP address"
}

output "droplet_pub_ip" {
  value       = digitalocean_droplet.droplet1.ipv4_address
  description = "This is the instance's public IP address"
}
