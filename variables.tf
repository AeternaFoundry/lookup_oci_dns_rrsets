variable "dns_rrsets_lookup" {
  description = <<EOT
Map of dns_rrsets_lookup, attributes below
Required:
    - zone_name_or_id
Optional:
    - domain
    - domain_contains
    - rtype
    - scope
    - view_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    zone_name_or_id = string
    domain          = optional(string)
    domain_contains = optional(string)
    rtype           = optional(string)
    scope           = optional(string)
    view_id         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

