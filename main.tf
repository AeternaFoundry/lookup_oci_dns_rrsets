data "oci_dns_rrsets" "dns_rrsets_lookup" {
  for_each = var.dns_rrsets_lookup

  zone_name_or_id = each.value.zone_name_or_id
  domain          = each.value.domain
  domain_contains = each.value.domain_contains
  rtype           = each.value.rtype
  scope           = each.value.scope
  view_id         = each.value.view_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

