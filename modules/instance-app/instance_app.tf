resource "google_compute_instance" "app" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    source = google_compute_disk.osdisk.self_link
  }

  network_interface {
    network = "default"

    access_config {
      //ephemeral-PUBLIC-IP
    }
  }

  service_account {
    email   = var.service_account_email
    scopes  = [
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring.write",
      "https://www.googleapis.com/auth/trace.append"
    ]
  }

  allow_stopping_for_update = true
  deletion_protection       = var.instance_deletion_protection
  tags                      = ["terraform", "${var.company}", "${var.company}-${var.env}"]
}