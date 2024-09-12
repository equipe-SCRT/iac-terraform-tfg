resource "aws_route_table" "rtb-pub-tfg" {
  vpc_id = aws_vpc.vpc_tech_for_good.id

  tags = {
    Name = "rtb-pub-tfg"
  }
  
}