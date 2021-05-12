data "google_compute_image" "so_image" {
  family  = "windows-2019"
  project = "windows-cloud"
}

resource "google_compute_disk" "osdisk" {
  name  = "${var.instance_name}-osdisk"
  type  = var.boot_disk_initialize_params_type
  size  = 50
  zone  = var.zone
  image = data.google_compute_image.so_image.self_link
  labels = {
    environment = "${var.env}"
  }
}