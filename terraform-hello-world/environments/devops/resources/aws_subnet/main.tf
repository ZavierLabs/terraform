resource "aws_subnet" "public-1a" {
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.10.0/24"
  vpc_id            = "${aws_vpc.main.id}"

  tags = {
    Name = "nombre-equipo-public"
  }
}
resource "aws_subnet" "private-1a" {
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.20.0/24"
  vpc_id            = "${aws_vpc.main.id}"

  tags = {
    Name = "nombre-equipo-private"
  }
}
