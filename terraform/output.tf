output "ip" {
  value = "${google_compute_instance.staging.network_interface.0.nat_ip}"
}

#output "boot_image" {
#  value = google_compute_instance.staging.boot_disk[initialize_params].image
#}

output "instance_id" {
  value = google_compute_instance.staging.self_link
}
