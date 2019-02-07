variable "tfstate-region" {
  type = "string"
  default = "us-west-1"
}

variable "tfstate-s3" {
  type = "string"
  default = "tfstate"
}

variable "tfstate-lock" {
  type = "string"
  default = "tfstate-lock"
}
