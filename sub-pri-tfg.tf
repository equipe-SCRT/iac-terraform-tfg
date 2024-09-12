resource "aws_subnet" "sub_pri_tfg" {
  
  vpc_id = aws_vpc.vpc_tech_for_good.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1a"
  
  tags = {
    Name = "sub_pri_tfg"
  }

}