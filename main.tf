resource "databricks_permission_assignment" "permission_assignments" {
  for_each = var.permission_assignments

  permissions            = each.value.permissions
  group_name             = each.value.group_name
  principal_id           = each.value.principal_id
  service_principal_name = each.value.service_principal_name
  user_name              = each.value.user_name

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

