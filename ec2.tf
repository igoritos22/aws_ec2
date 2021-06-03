resource "aws_network_interface" "nic_lab" {
  subnet_id   = aws_subnet.sub_lab_pub.id
  security_groups = [aws_security_group.sg_lab.id]
  tags = local.common_tags
}

resource "aws_instance" "ec2_lab" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name        = var.key_name

  user_data = file("install_docker.sh")
  tags = local.common_tags

  network_interface {
    network_interface_id = aws_network_interface.nic_lab.id
    device_index         = 0
  }

  depends_on = [aws_security_group.sg_lab]
}