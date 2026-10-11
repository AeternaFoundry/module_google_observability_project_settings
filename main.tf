resource "google_observability_project_settings" "observability_project_settings" {
  for_each = var.observability_project_settings

  location                 = each.value.location
  default_storage_location = each.value.default_storage_location
  kms_key_name             = each.value.kms_key_name
  project                  = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

