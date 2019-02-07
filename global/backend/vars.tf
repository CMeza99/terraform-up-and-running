variable "tf-state-region" {
  type = "string"
  default = "us-west-1"
}

variable "tf-state-s3" {
  type = "string"
  default = "tf-state"
}

locals {
variable "tf-state-lock" {
  type = "string"
  default = "tf-state-lock"
}
