resource "google_compute_instance" "vm" {
  name         = "${var.environment}-vm"
  project      = var.project_id
  zone         = var.zone
  machine_type = "e2-micro"
    boot_disk {
        initialize_params {
        image = "debian-cloud/debian-12"
        size = 10
        type = "pd-balanced"
        }
    } 
    network_interface {
        subnetwork = var.subnet_id
        access_config {
            #external IP
        }
    }
}