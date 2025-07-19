output "langfuse_service_url" {
  description = "Langfuse Service URL"
  value       = aws_apprunner_service.langfuse_web.service_url
}

output "grafana_service_url" {
  description = "Grafana Service URL"
  value       = aws_apprunner_service.grafana.service_url
}

output "langfuse_certificate_validation_records" {
  description = "Certificate validation records for Langfuse custom domain"
  value       = try(aws_apprunner_custom_domain_association.langfuse.certificate_validation_records, [])
}

output "grafana_certificate_validation_records" {
  description = "Certificate validation records for Grafana custom domain"
  value       = try(aws_apprunner_custom_domain_association.grafana.certificate_validation_records, [])
}

output "langfuse_custom_domain" {
  description = "Langfuse custom domain"
  value       = aws_apprunner_custom_domain_association.langfuse.domain_name
}

output "grafana_custom_domain" {
  description = "Grafana custom domain"
  value       = aws_apprunner_custom_domain_association.grafana.domain_name
}

output "langfuse_dns_target" {
  description = "DNS target for Langfuse custom domain"
  value       = try(aws_apprunner_custom_domain_association.langfuse.dns_target, "")
}

output "grafana_dns_target" {
  description = "DNS target for Grafana custom domain"
  value       = try(aws_apprunner_custom_domain_association.grafana.dns_target, "")
}