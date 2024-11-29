resource "google_compute_instance" "vm_group" {
  count        = 3
  name         = "terraform-3in1${count.index + 2}" 
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
