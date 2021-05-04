output "app_name" {
  value = google_compute_instance.app.name
}

output "app_network_ip" {
  value = google_compute_instance.app.network_interface[0].network_ip
}

//output "app_boot_disk_source" {
//  value = google_compute_instance.app.boot_disk.0.source
//}

