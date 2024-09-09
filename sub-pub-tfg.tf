resource "aws_subnet" "sub_pub_tfg" {
  vpc_id = "vpc-069da764092fa2dd3"
  cidr_block = "10.0.1.0/24"
  
  tags = {
    Name = "sub_pub_tfg"
  }

  map_public_ip_on_launch = true
}