output "serviceendpoint_mavens_id" {
  description = "Map of id values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => v.id }
}
output "serviceendpoint_mavens_authentication_basic" {
  description = "Map of authentication_basic values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => one(v.authentication_basic) }
  sensitive   = true
}
output "serviceendpoint_mavens_authentication_token" {
  description = "Map of authentication_token values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => one(v.authentication_token) }
  sensitive   = true
}
output "serviceendpoint_mavens_authorization" {
  description = "Map of authorization values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => v.authorization }
}
output "serviceendpoint_mavens_description" {
  description = "Map of description values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => v.description }
}
output "serviceendpoint_mavens_project_id" {
  description = "Map of project_id values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => v.project_id }
}
output "serviceendpoint_mavens_repository_id" {
  description = "Map of repository_id values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => v.repository_id }
}
output "serviceendpoint_mavens_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => v.service_endpoint_name }
}
output "serviceendpoint_mavens_url" {
  description = "Map of url values across all serviceendpoint_mavens, keyed the same as var.serviceendpoint_mavens"
  value       = { for k, v in azuredevops_serviceendpoint_maven.serviceendpoint_mavens : k => v.url }
}

