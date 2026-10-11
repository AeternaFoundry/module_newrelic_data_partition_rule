resource "newrelic_data_partition_rule" "data_partition_rules" {
  for_each = var.data_partition_rules

  enabled               = each.value.enabled
  nrql                  = each.value.nrql
  retention_policy      = each.value.retention_policy
  target_data_partition = each.value.target_data_partition
  account_id            = each.value.account_id
  description           = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

