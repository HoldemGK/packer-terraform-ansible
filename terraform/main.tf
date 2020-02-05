provider "google" {
  credentials = file(var.key)
  project     = var.project
  region      = var.region
}

data "google_compute_image" "boot_image" {
  family = var.image_family
}

resource "google_compute_instance" "staging" {
  name = var.server_name
  zone = var.zone
  machine_type = var.machine_type
  boot_disk {
    initialize_params {
      image = data.google_compute_image.boot_image.self_link
    }
  }

  network_interface {
    network = "default"
  }
}
