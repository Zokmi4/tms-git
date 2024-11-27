resource "google_compute_instance" "vm_instance" {
  count        = var.instance_count
  name         = "terraform-vm-deb${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}

module "additional_instances" {
  source       = "./modules/vm"
  project_id   = var.project_id
  region       = var.region
  zone         = var.zone
  machine_type = "e2-medium"
}

module "database" {
  source        = "./modules/db"
  project_id    = var.project_id
  region        = var.region
  instance_name = "terraform-database"
  db_name       = "terraform-test"
  db_user       = "zokmi4"
}
