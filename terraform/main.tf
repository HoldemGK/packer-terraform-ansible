provider "google" {
  credentials = file(var.key)
  project     = var.project
  region      = var.region
}

data "google_compute_instance" "staging" {
  name = var.server_name
  zone = var.zone
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = var.boot_image
    }
  }

  network_interface {
    network = "default"
  }
}
