terraform {
  required_version = ">= 0.11, < 0.12"

  backend "s3" {
    bucket         = "eb-test-tur-terraform-state"
    key            = "stage/data-stores/mysql/terraform.tfstate"
    region         = "ca-central-1"
    encrypt        = "true"
    dynamodb_table = "eb-test-tur-terraform-state-lock"
  }
}

provider "aws" {
  version                 = "~> 1.28"
  region                  = "ca-central-1"
}

resource "aws_db_instance" "example" {
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = "example_database"
  username            = "admin"
  password            = "${var.db_password}"
  skip_final_snapshot = true
}
