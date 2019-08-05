resource "aws_instance" "web" {
  ami               = "ami-0abcb9f9190e867ab"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  subnet_id         = "${aws_subnet.private-1a.id}"
  user_data_base64  = "${base64encode(data.template_file.userdata.rendered)}"
}