output "run_url" {
  description = "Cloud Run service URL"
  value       = google_cloud_run_service.default.status[0].url
}
