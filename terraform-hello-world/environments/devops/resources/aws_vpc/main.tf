resource "aws_vpc" "main" {
  cidr_block                       = "${var.vpc_cidr_block}"
  instance_tenancy                 = "${var.instance_tenancy}"
  assign_generated_ipv6_cidr_block = "false"
  enable_classiclink               = "false"
  enable_dns_hostnames             = "false"
  enable_classiclink_dns_support   = "false"

  tags = {Name = "nombre-equipo"}
}
