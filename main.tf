provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-docker-vm"
  machine_type = "e2-micro"
  zone         = var.region

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("startup.sh")

  tags = ["http-server", "https-server"]
}

