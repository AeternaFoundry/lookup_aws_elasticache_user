variable "elasticache_user_lookup" {
  description = <<EOT
Map of elasticache_user_lookup, attributes below
Required:
    - user_id
Optional:
    - access_string
    - engine
    - no_password_required
    - passwords
    - region
    - user_name
    - authentication_mode (block):
        - password_count (optional)
        - type (optional)
EOT

  type = map(object({
    user_id              = string
    access_string        = optional(string)
    engine               = optional(string)
    no_password_required = optional(bool)
    passwords            = optional(set(string))
    region               = optional(string)
    user_name            = optional(string)
    authentication_mode = optional(list(object({
      password_count = optional(number)
      type           = optional(string)
    })))
  }))
}

