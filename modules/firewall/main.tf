resource "google_compute_firewall" "allow_ssh" {
  name    = "${var.environment}-allow-ssh"
    network = var.network_id
    project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  
}