  module "aws_eip" {
    source = "../../resources/aws_eip"
  }

  module "aws_instance" {
    source = "../../resources/aws_instance"
  }

  module "aws_internet_gateway" {
    source = "../../resources/aws_internet_gateway"
  }
  module "aws_nat_gateway" {
    source = "../../resources/aws_nat_gateway"
  }
  module "aws_route" {
    source = "../../resources/aws_route"
  }
  module "aws_route_table" {
    source = "../../resources/aws_route_table"
  }
  module "aws_route_table_association" {
    source = "../../resources/aws_route_table_association"
  }
  module "aws_subnet" {
    source = "../../resources/aws_subnet"
  }
  module "aws_vpc" {
    source = "../../resources/aws_vpc"
  }
