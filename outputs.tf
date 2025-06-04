output "run_url" {
  value = google_cloud_run_service.frontend.status[0].url
}
