resource "aws_route_table_association" "route_private_ngw" {
  subnet_id      = "${aws_subnet.private-1a.id}"
  route_table_id = "${aws_route_table.private-1a.id}"
}

resource "aws_route_table_association" "route_public_igw" {
  subnet_id      = "${aws_subnet.public-1a.id}"
  route_table_id = "${aws_route_table.public-1a.id}"
}
