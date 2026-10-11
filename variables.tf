variable "data_partition_rules" {
  description = <<EOT
Map of data_partition_rules, attributes below
Required:
    - enabled
    - nrql
    - retention_policy
    - target_data_partition
Optional:
    - account_id
    - description
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    enabled               = bool
    nrql                  = string
    retention_policy      = string
    target_data_partition = string
    account_id            = optional(number)
    description           = optional(string)
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

