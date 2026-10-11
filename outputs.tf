output "data_partition_rules_id" {
  description = "Map of id values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no id are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_partition_rules_account_id" {
  description = "Map of account_id values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no account_id are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.account_id if v.account_id != null }
}
output "data_partition_rules_deleted" {
  description = "Map of deleted values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no deleted are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.deleted if v.deleted != null }
}
output "data_partition_rules_description" {
  description = "Map of description values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no description are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_partition_rules_enabled" {
  description = "Map of enabled values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no enabled are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.enabled if v.enabled != null }
}
output "data_partition_rules_nrql" {
  description = "Map of nrql values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no nrql are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.nrql if v.nrql != null && length(v.nrql) > 0 }
}
output "data_partition_rules_retention_policy" {
  description = "Map of retention_policy values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no retention_policy are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.retention_policy if v.retention_policy != null && length(v.retention_policy) > 0 }
}
output "data_partition_rules_target_data_partition" {
  description = "Map of target_data_partition values across all data_partition_rules, keyed the same as var.data_partition_rules except keys with no target_data_partition are omitted"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.target_data_partition if v.target_data_partition != null && length(v.target_data_partition) > 0 }
}

