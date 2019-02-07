terraform {
  required_version = ">= 0.11, < 0.12"
}

provider "aws" {
  version                 = "~> 1.28"
  region                  = "${var.tf-state-region}"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.tf-state-s3}"

  versioning {
    enabled = true
  }

  tags {
    Name = "Terraform State"
  }

/*
  lifecycle {
    prevent_destroy = true
  }
*/
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "${local.tf-state-lock}"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags {
    Name = "Terraform State Lock Table"
  }

/*
  lifecycle {
    prevent_destroy = true
  }
*/
}
