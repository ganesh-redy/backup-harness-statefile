provider "google" {
    project = "sam-458313"
    region = "us-cebtral1"
    zone = "us-central1-b"
  
}
/*
data google_compute_instance "instance"{
    name = "okay"
        
}
output "name" {
    value = data.google_compute_instance.instance
  
}
*/
resource "google_compute_instance" "inst" {
    name = "instance-1"
    zone = "us-central1-b"
    machine_type = "e2-medium"
    boot_disk {
      initialize_params {
        image = "centos-stream-9"
      }
    }
    network_interface {
      access_config {
        
      }
    }
