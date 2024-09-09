resource "aws_subnet" "sub_pri_tfg" {
  vpc_id = aws_vpc.vpc_tech_for_good.id
  cidr_block = "192.168.2.0/24"
  
  tags = {
    Name = "sub_pri_tfg"
  }

  map_customer_owned_ip_on_launch = false
}