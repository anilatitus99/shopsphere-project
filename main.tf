provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_artifact_registry_repository" "repo" {
  provider      = google
  location      = var.region
  repository_id = "shopsphere-artifacts"
  format        = "DOCKER"
  description   = "Artifact repo for Shopsphere CI/CD"
}

resource "google_cloud_run_service" "frontend" {
  name     = "frontend-service"
  location = var.region

  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/hello" # We'll replace this later
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
