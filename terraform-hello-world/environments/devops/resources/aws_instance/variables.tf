variable "ami" {ami-0abcb9f9190e867ab}
variable "instance_type" {t2.micro}
variable "availability_zone" {us-east-1a}
variable "subnet_id" {aws_subnet.private-1a.id}
variable "user_data_base64" {base64encode(data.template_file.userdata.rendered)}