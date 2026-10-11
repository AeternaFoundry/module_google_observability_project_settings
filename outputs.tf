output "observability_project_settings_id" {
  description = "Map of id values across all observability_project_settings, keyed the same as var.observability_project_settings except keys with no id are omitted"
  value       = { for k, v in google_observability_project_settings.observability_project_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "observability_project_settings_default_storage_location" {
  description = "Map of default_storage_location values across all observability_project_settings, keyed the same as var.observability_project_settings except keys with no default_storage_location are omitted"
  value       = { for k, v in google_observability_project_settings.observability_project_settings : k => v.default_storage_location if v.default_storage_location != null && length(v.default_storage_location) > 0 }
}
output "observability_project_settings_kms_key_name" {
  description = "Map of kms_key_name values across all observability_project_settings, keyed the same as var.observability_project_settings except keys with no kms_key_name are omitted"
  value       = { for k, v in google_observability_project_settings.observability_project_settings : k => v.kms_key_name if v.kms_key_name != null && length(v.kms_key_name) > 0 }
}
output "observability_project_settings_location" {
  description = "Map of location values across all observability_project_settings, keyed the same as var.observability_project_settings except keys with no location are omitted"
  value       = { for k, v in google_observability_project_settings.observability_project_settings : k => v.location if v.location != null && length(v.location) > 0 }
}
output "observability_project_settings_name" {
  description = "Map of name values across all observability_project_settings, keyed the same as var.observability_project_settings except keys with no name are omitted"
  value       = { for k, v in google_observability_project_settings.observability_project_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "observability_project_settings_project" {
  description = "Map of project values across all observability_project_settings, keyed the same as var.observability_project_settings except keys with no project are omitted"
  value       = { for k, v in google_observability_project_settings.observability_project_settings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "observability_project_settings_service_account_id" {
  description = "Map of service_account_id values across all observability_project_settings, keyed the same as var.observability_project_settings except keys with no service_account_id are omitted"
  value       = { for k, v in google_observability_project_settings.observability_project_settings : k => v.service_account_id if v.service_account_id != null && length(v.service_account_id) > 0 }
}

