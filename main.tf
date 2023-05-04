terraform {
  cloud {
    organization = "vlad-org"

    workspaces {
      name = "myworkspace2"
    }
  }
}
provider "aws" {
  region = "us-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "test1" {
  ami           = "ami-0583a1f1cd3c11ebc"
  instance_type = "t1.micro"

  tags = {
    Name = var.instance_name
  }
}
