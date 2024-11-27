resource "google_compute_instance" "vm_instances" {
  count        = var.instance_count
  name         = "zokmi4-terraform-vm-${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}