resource "google_compute_disk" "dbdisk" {
  name     = "${var.instance_name}-dbdisk"
  type     = var.boot_disk_initialize_params_type
  size     = 15
  zone     = var.zone
  #snapshot = var.snapshot_db_srv
  image    = var.image
  labels = {
    environment = "${var.env}"
  }
}

resource "google_compute_disk" "dbdata" {
  name = "${var.instance_name}-dbdata"
  type = var.boot_disk_initialize_params_type
  size = 20
  zone = var.zone
}

resource "google_compute_attached_disk" "attached_dbdata" {
  disk        = google_compute_disk.dbdata.id
  instance    = google_compute_instance.db.id
  device_name = "disco_anexado"
}