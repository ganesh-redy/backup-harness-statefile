provider "google" {
    project = "sam-458313"
    region = "us-cebtral1"
    zone = "us-central1-b"
  
}

data google_compute_instance "instance"{
    name = "okay"
        
}
output "name" {
    value = data.google_compute_instance.instance
  
}
