resource "google_storage_bucket" "terraform_state" {
  name     = var.bucket_name
  location = var.location

  project = var.project_id

  storage_class = "STANDARD"

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
  force_destroy = true
  
}