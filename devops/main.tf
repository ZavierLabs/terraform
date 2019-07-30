#Requiring a minimum Terraform version to execute a configuration
terraform {
  required_version = "> 0.11.13"

  backend "s3" {
    bucket  = "terraform-hello-world"
    key     = "devops/terraform.tfstate"
    region  = "us-east-1"
    encrypt = "true"
  }
}

#The provider variables for used the services
provider "aws" {
  version = "~> 2.0.0 "
  region  = "us-east-1"
}

  tags = {
    Name = "terraform-hello-world"
  }

data "template_file" "userdata" {
  template = "${file("${path.module}/templates/userdata.sh.tpl")}"
}
