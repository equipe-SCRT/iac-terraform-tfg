resource "aws_subnet" "sub_pub_tfg_a" {
  
  vpc_id = aws_vpc.vpc_tech_for_good.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  
  tags = {
    Name = "sub_pub_tfg_a"
  }

  enable_resource_name_dns_a_record_on_launch = true

  map_public_ip_on_launch = true
}

resource "aws_subnet" "sub_pub_tfg_b" {
  vpc_id            = aws_vpc.vpc_tech_for_good.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "sub_pub_tfg_b"
  }

  enable_resource_name_dns_a_record_on_launch = true
  map_public_ip_on_launch = true
}