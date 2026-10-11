output "elasticache_user_lookup_id" {
  description = "Map of id values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticache_user_lookup_access_string" {
  description = "Map of access_string values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.access_string if v.access_string != null && length(v.access_string) > 0 }
}
output "elasticache_user_lookup_authentication_mode" {
  description = "Map of authentication_mode values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.authentication_mode if v.authentication_mode != null && length(v.authentication_mode) > 0 }
}
output "elasticache_user_lookup_engine" {
  description = "Map of engine values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "elasticache_user_lookup_no_password_required" {
  description = "Map of no_password_required values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.no_password_required if v.no_password_required != null }
}
output "elasticache_user_lookup_passwords" {
  description = "Map of passwords values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.passwords if v.passwords != null && length(v.passwords) > 0 }
  sensitive   = true
}
output "elasticache_user_lookup_region" {
  description = "Map of region values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elasticache_user_lookup_user_id" {
  description = "Map of user_id values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "elasticache_user_lookup_user_name" {
  description = "Map of user_name values across all elasticache_user_lookup, keyed the same as var.elasticache_user_lookup"
  value       = { for k, v in data.aws_elasticache_user.elasticache_user_lookup : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

