terraform {
  required_version = ">= 0.8, < 0.12"
}

provider "aws" {
  region = "ca-central-1"
  shared_credentials_file = "/root/.aws/creds"
  profile                 = "saml"
}

resource "aws_instance" "example" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"

  tags {
    Name = "terraform-example"
  }
}
