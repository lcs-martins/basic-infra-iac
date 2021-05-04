
variable "region" {}

variable "zone" {}

variable "project" {}

variable "company" {}

variable "instance_name" {}

variable "env" {}

variable "bucket_name" {
  default = "terraform-gcp-engine-remote-state"
}

variable "location" {
  default = "US"
}

variable "versioning" {
  default = true
}

variable "force_destroy" {
  default = false
}
