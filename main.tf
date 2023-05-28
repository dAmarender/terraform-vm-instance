terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.66.0"
    }
  }
}

provider "google" {
  credentials = "gcloud-vm-388121-f17c2ed996e8.json" 

  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  tags         = var.network_tags

  boot_disk {
    initialize_params {
      image = var.machine_image
      type  = var.disk_type
      size  = var.disk_size
    }
  }

  scheduling {
    preemptible       = true
    automatic_restart = false
  }

  metadata_startup_script = file(var.startup_script)


  network_interface {
    network = "default"
    access_config {
    }
  }
}

