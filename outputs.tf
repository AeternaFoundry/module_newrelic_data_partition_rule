output "data_partition_rules_id" {
  description = "Map of id values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.id }
}
output "data_partition_rules_account_id" {
  description = "Map of account_id values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.account_id }
}
output "data_partition_rules_deleted" {
  description = "Map of deleted values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.deleted }
}
output "data_partition_rules_description" {
  description = "Map of description values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.description }
}
output "data_partition_rules_enabled" {
  description = "Map of enabled values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.enabled }
}
output "data_partition_rules_nrql" {
  description = "Map of nrql values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.nrql }
}
output "data_partition_rules_retention_policy" {
  description = "Map of retention_policy values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.retention_policy }
}
output "data_partition_rules_target_data_partition" {
  description = "Map of target_data_partition values across all data_partition_rules, keyed the same as var.data_partition_rules"
  value       = { for k, v in newrelic_data_partition_rule.data_partition_rules : k => v.target_data_partition }
}

