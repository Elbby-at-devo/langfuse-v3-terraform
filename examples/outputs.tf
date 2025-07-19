output "langfuse_service_url" {
  description = "Langfuse Service URL"
  value       = module.langfuse.langfuse_service_url
}

output "grafana_service_url" {
  description = "Grafana Service URL"
  value       = module.langfuse.grafana_service_url
}

output "langfuse_certificate_validation_records" {
  description = "Certificate validation records for Langfuse custom domain"
  value       = module.langfuse.langfuse_certificate_validation_records
}

output "grafana_certificate_validation_records" {
  description = "Certificate validation records for Grafana custom domain"
  value       = module.langfuse.grafana_certificate_validation_records
}

output "langfuse_custom_domain" {
  description = "Langfuse custom domain"
  value       = module.langfuse.langfuse_custom_domain
}

output "grafana_custom_domain" {
  description = "Grafana custom domain"
  value       = module.langfuse.grafana_custom_domain
}

output "langfuse_dns_target" {
  description = "DNS target for Langfuse custom domain"
  value       = module.langfuse.langfuse_dns_target
}

output "grafana_dns_target" {
  description = "DNS target for Grafana custom domain"
  value       = module.langfuse.grafana_dns_target
}