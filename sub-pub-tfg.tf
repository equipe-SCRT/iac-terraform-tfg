resource "aws_subnet" "sub_pub_tfg" {
  vpc_id = aws_vpc.vpc_tech_for_good.id
  cidr_block = "192.168.1.0/24"
  
  tags = {
    Name = "sub_pub_tfg"
  }

  map_public_ip_on_launch = true
}