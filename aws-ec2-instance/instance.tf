# Create the ec2 instance
resource "aws_instance" "terraform-ins" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.ssh_key_name
  subnet_id = aws_subnet.terraform-sub.id
  vpc_security_group_ids = ["${aws_security_group.t-ssh.id}"]
  associate_public_ip_address = "true"
  tags = {
      Name = var.instance_name
  }
  root_block_device {
      delete_on_termination = "true"
      volume_size = var.volume_size
      volume_type = var.volume_type
  }
}

# Output the instance's private & public IP

output "instance_priv_ip" {
  value = aws_instance.terraform-ins.private_ip
  description = "This is the instance's private IP address"
}

output "instance_pub_ip" {
  value = aws_instance.terraform-ins.public_ip
  description = "This is the instance's public IP address"
}

output instance_pub_dns {
  value       = aws_instance.terraform-ins.public_dns
  description = "This is the instance's public DNS name"
}
