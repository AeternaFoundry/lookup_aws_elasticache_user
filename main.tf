data "aws_elasticache_user" "elasticache_user_lookup" {
  for_each = var.elasticache_user_lookup

  user_id              = each.value.user_id
  access_string        = each.value.access_string
  engine               = each.value.engine
  no_password_required = each.value.no_password_required
  passwords            = each.value.passwords
  region               = each.value.region
  user_name            = each.value.user_name

  dynamic "authentication_mode" {
    for_each = each.value.authentication_mode != null ? each.value.authentication_mode : []
    content {
      password_count = authentication_mode.value.password_count
      type           = authentication_mode.value.type
    }
  }
}

