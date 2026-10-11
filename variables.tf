variable "permission_assignments" {
  description = <<EOT
Map of permission_assignments, attributes below
Required:
    - permissions
Optional:
    - group_name
    - principal_id
    - service_principal_name
    - user_name
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    permissions            = list(string)
    group_name             = optional(string)
    principal_id           = optional(number)
    service_principal_name = optional(string)
    user_name              = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

