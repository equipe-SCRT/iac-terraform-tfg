resource "aws_route_table_association" "rtb-pub-association-a" {
  subnet_id      = aws_subnet.sub_pub_tfg_a.id  
  route_table_id = aws_route_table.rtb-pub-tfg.id
}

resource "aws_route_table_association" "rtb-pub-association-b" {
  subnet_id      = aws_subnet.sub_pub_tfg_b.id  
  route_table_id = aws_route_table.rtb-pub-tfg.id
}

resource "aws_route_table_association" "rtb-pri-association" {
  subnet_id      = aws_subnet.sub_pri_tfg.id
  route_table_id = aws_route_table.rtb-pub-tfg.id
}