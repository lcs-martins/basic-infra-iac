provider "google" {
  credentials = file("../credentials.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

module "bucket" {

  source = "../../modules/remote-state-bucket"

  project     = var.project
  region      = var.region
  zone        = var.zone
  env           = var.env
  company       = var.company
  instance_name = "db"
  force_destroy = false
}