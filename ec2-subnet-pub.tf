resource "aws_instance" "ec2-iac-pub-tfg" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t3.small"

  tags = {
    Name = "ec2-iac-pub-tfg"
  }

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 30
    volume_type = "gp3"
  }

  key_name = "tfg_key"

  subnet_id = aws_subnet.sub_pub_tfg.id

  vpc_security_group_ids = [ aws_security_group.sg_pub_tech_for_good.id ]
}