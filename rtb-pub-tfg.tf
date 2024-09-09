resource "aws_route_table" "rtb-pub-tfg" {
  vpc_id = aws_vpc.vpc_tech_for_good.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-tfg.id
  }

  tags = {
    Name = "rtb-pub-tfg"
  }
  
}