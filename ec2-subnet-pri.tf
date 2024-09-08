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

  key_name = aws_key_pair.generated_key.key_name

  

  associate_public_ip_address = false
}