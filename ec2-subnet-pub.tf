resource "aws_instance" "ec2-iac-pub-tfg-a" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t3.small"

  tags = {
    Name = "ec2-iac-pub-tfg-a"
  }

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 30
    volume_type = "gp3"
  }

  key_name = "tfg_key"

  subnet_id = aws_subnet.sub_pub_tfg_a.id

  vpc_security_group_ids = [ aws_security_group.sg_pub_tech_for_good.id ]
}

resource "aws_instance" "ec2_iac_pub_tfg-b" {
  ami           = "ami-066784287e358dad1"
  instance_type = "t3.small"
  availability_zone = "us-east-1a"

  tags = {
    Name = "ec2-iac-pub-tfg-b"
  }

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = 30
    volume_type = "gp3"
  }

  key_name = "tfg_key"
  subnet_id = aws_subnet.sub_pub_tfg_b.id

  vpc_security_group_ids = [ aws_security_group.sg_pub_tech_for_good.id ]
}