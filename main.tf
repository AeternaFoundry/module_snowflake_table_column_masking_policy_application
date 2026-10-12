resource "snowflake_table_column_masking_policy_application" "table_column_masking_policy_applications" {
  for_each = var.table_column_masking_policy_applications

  column         = each.value.column
  masking_policy = each.value.masking_policy
  table          = each.value.table

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

