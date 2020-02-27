# Create the ec2 instance
resource "aws_instance" "test-terraform-ins" {
  count = var.instance_count
  ami = var.ami
  instance_type = var.instance_type
  key_name = "admin"
  subnet_id = aws_subnet.test-terraform-sub.id
  vpc_security_group_ids = ["${aws_security_group.t-ssh-http-s.id}"]
  associate_public_ip_address = "true"
  tags = {
      Name = "test-terraform-ins-${count.index + 1}"
  }
  root_block_device {
      delete_on_termination = "true"
      volume_size = var.volume_size
      volume_type = var.volume_type
  }
}

# Output the instance's public IP
output "instance_pub_ip" {
  value = aws_instance.test-terraform-ins[*].public_ip
}