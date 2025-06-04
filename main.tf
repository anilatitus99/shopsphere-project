provider "google" {
  project = "shopsphere-456123"
  region  = "us-central1"
}

module "cloudrun_frontend" {
  source       = "./modules/cloudrun"
  service_name = "frontend"
  region       = "us-central1"
  project_id   = "shopsphere-456123"
  image        = "us-central1-docker.pkg.dev/shopsphere-456123/shopsphere-frontend/frontend:latest"
}

module "cloudrun_backend" {
  source       = "./modules/cloudrun"
  service_name = "backend"
  region       = "us-central1"
  project_id   = "shopsphere-456123"
  image        = "us-central1-docker.pkg.dev/shopsphere-456123/shopsphere-backend/backend:latest"
}
