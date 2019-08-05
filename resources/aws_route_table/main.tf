resource "aws_route_table" "public-1a" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name = "nombre-equipo-public"
  }
}

resource "aws_route_table" "private-1a" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name = "nombre-equipo-private"
  }
}
