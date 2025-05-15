
/*
data google_compute_instance "instance"{
    name = "okay"
        
}
output "name" {
    value = data.google_compute_instance.instance
  
}
*/
provider "google" {
  project = "sam-458313"
  region  = "us-central1"
  zone    = "us-central1-b"
}

resource "google_compute_instance" "inst" {
  name         = "instance-1"
  machine_type = "e2-medium"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
