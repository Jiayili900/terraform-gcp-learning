module "storage" {
  source = "./modules/storage"
  
  bucket_name = local.bucket_name
  region = var.region
}