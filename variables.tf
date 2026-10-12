variable "table_column_masking_policy_applications" {
  description = <<EOT
Map of table_column_masking_policy_applications, attributes below
Required:
    - column
    - masking_policy
    - table
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    column         = string
    masking_policy = string
    table          = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

