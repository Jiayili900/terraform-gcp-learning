# module "storage" {
#   source = "./modules/storage"

#   bucket_name = local.bucket_name
#   region      = var.region
# }

module "network" {
  source = "./modules/network"

  project_id  = var.project_id
  environment = var.environment
}