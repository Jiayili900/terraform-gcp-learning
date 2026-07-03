resource "google_storage_bucket" "traning_bucket" {
  name          = var.bucket_name
  location      = var.region
}

