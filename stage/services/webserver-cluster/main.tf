terraform {
  required_version = ">= 0.11, < 0.12"
  backend "s3" {
    bucket         = "eb-test-tur-terraform-state"
    key            = "stage/services/webserver-cluster/terraform.tfstate"
    region         = "ca-central-1"
    encrypt        = "true"
    dynamodb_table = "eb-test-tur-terraform-state-lock"
  }
}

provider "aws" {
  version                 = "~> 1.28"
  region                  = "ca-central-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "${var.db_remote_state_bucket}"
  db_remote_state_key    = "${var.db_remote_state_key}"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}

/*
resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = "${module.webserver_cluster.elb_security_group_id}"

  from_port   = 12345
  to_port     = 12345
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
*/
