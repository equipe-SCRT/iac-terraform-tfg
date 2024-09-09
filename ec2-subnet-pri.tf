resource "aws_instance" "ec2-iac-pri-tfg" {
  ami = "ami-066784287e358dad1"
  instance_type = "t3.small"

  tags = {
    Name = "ec2-iac-pri-tfg"
  }

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 30
    volume_type = "gp3"
  }

  key_name = "tfg_key.pem"

  subnet_id = aws_subnet.sub_pub_tfg.id

  security_groups = [aws_security_group.sg_tech_for_good.name, "default"]

  associate_public_ip_address = false
}