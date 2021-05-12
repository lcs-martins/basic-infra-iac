provider "google" {
  credentials = file("${var.credentials}")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

module "bucket" {

  source = "../../modules/remote-state-bucket"

  project       = var.project
  region        = var.region
  zone          = var.zone
  env           = var.env
  company       = var.company
  instance_name = "${local.instance_prefix}-remote-state"
  force_destroy = false
}
