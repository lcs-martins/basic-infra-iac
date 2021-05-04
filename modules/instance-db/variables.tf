variable "name" {}

variable "project" {}

variable "region" {}

variable "zone" {}

variable "company" {}

variable "instance_name" {}

variable "env" {}

variable "service_account_email" {}

variable "machine_type" {}

variable "boot_disk_initialize_params_type" { default = "pd-standard" }

variable "instance_deletion_protection" { default = false }

variable "metadata_instance" {  default = {} }