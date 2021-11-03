# Create the SSH key pair, here we use a key we created locally beforehand
resource "aws_key_pair" "admin" {
  key_name   = var.ssh_key_name
  public_key = file(var.ssh_key_location)
}