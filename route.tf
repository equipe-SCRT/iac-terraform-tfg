resource "aws_route" "rt_tfg" {
  route_table_id = aws_route_table.rtb-pub-tfg.id
  gateway_id = aws_internet_gateway.igw-tfg.id
  destination_cidr_block = "0.0.0.0/0"
}