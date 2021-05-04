provider "google" {
  credentials = file("${var.credentials}")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

terraform {
  backend "gcs" {
    bucket = " BUCKET NAME HERE "
    path  = "remote-state/terraform.tfstate"
    credentials = file("${var.credentials}")
  }
}