output "permission_assignments_id" {
  description = "Map of id values across all permission_assignments, keyed the same as var.permission_assignments except keys with no id are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "permission_assignments_display_name" {
  description = "Map of display_name values across all permission_assignments, keyed the same as var.permission_assignments except keys with no display_name are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "permission_assignments_group_name" {
  description = "Map of group_name values across all permission_assignments, keyed the same as var.permission_assignments except keys with no group_name are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "permission_assignments_permissions" {
  description = "Map of permissions values across all permission_assignments, keyed the same as var.permission_assignments except keys with no permissions are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "permission_assignments_principal_id" {
  description = "Map of principal_id values across all permission_assignments, keyed the same as var.permission_assignments except keys with no principal_id are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => v.principal_id if v.principal_id != null }
}
output "permission_assignments_provider_config" {
  description = "Map of provider_config values across all permission_assignments, keyed the same as var.permission_assignments except keys with no provider_config are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "permission_assignments_service_principal_name" {
  description = "Map of service_principal_name values across all permission_assignments, keyed the same as var.permission_assignments except keys with no service_principal_name are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => v.service_principal_name if v.service_principal_name != null && length(v.service_principal_name) > 0 }
}
output "permission_assignments_user_name" {
  description = "Map of user_name values across all permission_assignments, keyed the same as var.permission_assignments except keys with no user_name are omitted"
  value       = { for k, v in databricks_permission_assignment.permission_assignments : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

