resource "aws_ebs_volume" "ebs_scrt" {
  availability_zone = "us-east-1a"
  size              = 10
  tags = {
    Name = "EBS SCRT"
  }
}

resource "aws_volume_attachment" "attach_ebs" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs_scrt.id
  instance_id = aws_instance.ec2-iac-pub-tfg-a.id
}
