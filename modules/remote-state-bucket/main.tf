resource "google_storage_bucket" "bucket" {
  name     = "${var.bucket_name}-${local.global_name}"
  project  = var.project
  location = var.location

  versioning {
    enabled = var.versioning
  }

  force_destroy = var.force_destroy
}