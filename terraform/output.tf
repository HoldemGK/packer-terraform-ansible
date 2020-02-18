output "ip" {
  value = "${google_compute_instance.staging.network_interface.0.network}"
}

output "instance_id" {
  value = google_compute_instance.staging.self_link
}
