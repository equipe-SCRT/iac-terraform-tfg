resource "aws_internet_gateway" "igw-tfg" {
  vpc_id = aws_vpc.vpc_tech_for_good.id

  tags = {
    Name = "igw-tfg"
  }
}