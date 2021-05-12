# Create a Google Compute instance and your resources
resource "google_compute_instance" "db" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    source = google_compute_disk.dbdisk.self_link
  }

  network_interface {
    network = "default"

    access_config {
      //ephemeral-public-IP
    }
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(local.ssh_pub)}"
  }

  provisioner "file" {
    connection {
            type = "ssh"
            user = var.ssh_user
            private_key = file(local.ssh_prv)
            host = google_compute_instance.db.network_interface.0.access_config.0.nat_ip
        }
    source      = " NEED FULL PATH REF TO SCRIPT. WINDOWS EX: J:/users/xptuser/project/modules/instance-db/scripts/script.sh"
    destination = "/tmp/configure_cluster_main.sh"
  }

  
  provisioner "remote-exec" {
    
    connection {
            type = "ssh"
            user = var.ssh_user
            private_key = file(local.ssh_prv)
            host = google_compute_instance.db.network_interface.0.access_config.0.nat_ip
        }
    inline = [
      "sudo chmod +x /tmp/script.sh",
      "sudo /tmp/script",
    ]
  }

  lifecycle {
    ignore_changes = [attached_disk]
  }

  service_account {
    email = var.service_account_email
    scopes = [
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/devstorage.read_write",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring.write",
      "https://www.googleapis.com/auth/trace.append"
    ]
  }

  allow_stopping_for_update = true
  deletion_protection       = var.instance_deletion_protection
  tags                      = ["terraform", "${var.company}", "${var.company}-${var.env}", "${var.palavras_chaves}"]

}
