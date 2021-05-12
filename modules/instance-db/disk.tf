data "google_compute_image" "so_image" {
  family  = "debian-9"
  project = "debian-cloud"
}

resource "google_compute_disk" "dbdisk" {
  name  = "${var.instance_name}-dbdisk"
  type  = var.boot_disk_initialize_params_type
  size  = 15
  zone  = var.zone
  data.google_compute_image.so_image.self_link
  labels = {
    environment = "${var.env}"
  }
}

resource "google_compute_disk" "dbdisk_2" {
  name = "${var.instance_name}-dbdisk-2"
  type = var.boot_disk_initialize_params_type
  size = 20
  zone = var.zone
}

resource "google_compute_attached_disk" "attached_dbdisk_2" {
  disk = google_compute_disk.dbdisk_2.id
  instance = google_compute_instance.db.id
  device_name = "disco_anexado" 
}