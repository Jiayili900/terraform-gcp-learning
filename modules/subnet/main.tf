resource "google_compute_subnetwork" "subnet" {
  name          = "${var.environment}-subnet"
  project       = var.project_id
  ip_cidr_range = var.cidr_range
  region        = var.region
  network       = var.network_id
}