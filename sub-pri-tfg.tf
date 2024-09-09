resource "aws_subnet" "sub_pri_tfg" {
  vpc_id = "vpc-069da764092fa2dd3"
  cidr_block = "10.0.2.0/24"
  
  tags = {
    Name = "sub_pri_tfg"
  }

  map_public_ip_on_launch = false
}