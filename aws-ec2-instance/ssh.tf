# Create the SSH key pair, here we use a key we created locally beforehand
resource "aws_key_pair" "admin" {
  key_name = "admin"
  public_key = file("ssh-keys/id_rsa_aws.pub")
}