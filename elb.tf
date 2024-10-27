resource "aws_elb" "elb_pub_tfg" {
  name               = "elb-pub-tfg"

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  # listener {
  #   instance_port     = 443
  #   instance_protocol = "HTTPS"
  #   lb_port           = 443
  #   lb_protocol       = "HTTPS"
  # }

  instances = [
    aws_instance.ec2-iac-pub-tfg-a.id,
    aws_instance.ec2_iac_pub_tfg-b.id
  ]

  subnets = [ aws_subnet.sub_pub_tfg_a.id,
  aws_subnet.sub_pub_tfg_b.id]

  tags = {
    Name = "elb-pub-tfg"
  }
}
