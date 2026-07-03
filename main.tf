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

module "subnet" {
  source = "./modules/subnet"

  project_id  = var.project_id
  environment = var.environment
  network_id  = module.network.network_id
  cidr_range  = "10.0.1.0/24"
  region      = var.region
}

module "firewall" {
  source = "./modules/firewall"

  project_id  = var.project_id
  environment = var.environment
  network_id  = module.network.network_id
}

module "compute" {
  source = "./modules/compute"

  project_id  = var.project_id
  environment = var.environment
  region      = var.region
  zone        = "us-central1-a"
  subnet_id   = module.subnet.subnet_id
}

module "storage" {
  source = "./modules/storage"

  project_id  = var.project_id
  bucket_name = "${var.project_id}-tfstate"
  location    = "US"
}