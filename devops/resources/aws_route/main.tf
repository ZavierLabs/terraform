resource "aws_route" "gw" {
  route_table_id         = "${aws_route_table.public-1a.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.igw.id}"
}

resource "aws_route" "ngw" {
  route_table_id         = "${aws_route_table.private-1a.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.ngw.id}"
}

