output "frontend_url" {
  description = "Frontend Cloud Run URL"
  value       = module.cloudrun_frontend.run_url
}

output "backend_url" {
  description = "Backend Cloud Run URL"
  value       = module.cloudrun_backend.run_url
}
