resource "aws_nat_gateway" "ngw" {
  subnet_id     = "${aws_subnet.public-1a.id}"
  allocation_id = "${aws_eip.main.id}"
}
