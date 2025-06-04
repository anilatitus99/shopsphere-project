resource "google_cloud_run_service" "default" {
  name     = var.service_name
  project  = var.project_id
  location = var.region

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
