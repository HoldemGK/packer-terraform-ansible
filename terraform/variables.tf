variable "project" {}

variable "key" {
  description = "The path to the GCP credentials JSON file"
}

variable "server_name" {
  description = "Hostname of instance"
}

variable "num_instances" {
  description = "Number of instances to create"
}

variable "zone" {
  description = "In this example us-east1-b"
}

variable "machine_type" {
  description = "Type of instance"
}

variable "boot_image" {
  description = "Image created of Packer"
}
