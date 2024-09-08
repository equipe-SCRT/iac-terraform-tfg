resource "aws_vpc" "vpc_tech_for_good" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "vpc_tech_for_good"
  } 
}