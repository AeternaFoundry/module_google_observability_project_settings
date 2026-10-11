variable "observability_project_settings" {
  description = <<EOT
Map of observability_project_settings, attributes below
Required:
    - location
Optional:
    - default_storage_location
    - kms_key_name
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                 = string
    default_storage_location = optional(string)
    kms_key_name             = optional(string)
    project                  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

