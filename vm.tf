resource "google_compute_instance" "vm1" {
  name         = "terraform-vm1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20210916"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Включить внешний IP
    }
  }
}
