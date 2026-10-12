output "table_column_masking_policy_applications_id" {
  description = "Map of id values across all table_column_masking_policy_applications, keyed the same as var.table_column_masking_policy_applications except keys with no id are omitted"
  value       = { for k, v in snowflake_table_column_masking_policy_application.table_column_masking_policy_applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "table_column_masking_policy_applications_column" {
  description = "Map of column values across all table_column_masking_policy_applications, keyed the same as var.table_column_masking_policy_applications except keys with no column are omitted"
  value       = { for k, v in snowflake_table_column_masking_policy_application.table_column_masking_policy_applications : k => v.column if v.column != null && length(v.column) > 0 }
}
output "table_column_masking_policy_applications_masking_policy" {
  description = "Map of masking_policy values across all table_column_masking_policy_applications, keyed the same as var.table_column_masking_policy_applications except keys with no masking_policy are omitted"
  value       = { for k, v in snowflake_table_column_masking_policy_application.table_column_masking_policy_applications : k => v.masking_policy if v.masking_policy != null && length(v.masking_policy) > 0 }
}
output "table_column_masking_policy_applications_table" {
  description = "Map of table values across all table_column_masking_policy_applications, keyed the same as var.table_column_masking_policy_applications except keys with no table are omitted"
  value       = { for k, v in snowflake_table_column_masking_policy_application.table_column_masking_policy_applications : k => v.table if v.table != null && length(v.table) > 0 }
}

