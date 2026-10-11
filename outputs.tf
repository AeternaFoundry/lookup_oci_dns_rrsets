output "dns_rrsets_lookup_id" {
  description = "Map of id values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_rrsets_lookup_domain" {
  description = "Map of domain values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no domain are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "dns_rrsets_lookup_domain_contains" {
  description = "Map of domain_contains values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no domain_contains are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.domain_contains if v.domain_contains != null && length(v.domain_contains) > 0 }
}
output "dns_rrsets_lookup_filter" {
  description = "Map of filter values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "dns_rrsets_lookup_rrsets" {
  description = "Map of rrsets values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no rrsets are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.rrsets if v.rrsets != null && length(v.rrsets) > 0 }
}
output "dns_rrsets_lookup_rtype" {
  description = "Map of rtype values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no rtype are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.rtype if v.rtype != null && length(v.rtype) > 0 }
}
output "dns_rrsets_lookup_scope" {
  description = "Map of scope values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no scope are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "dns_rrsets_lookup_view_id" {
  description = "Map of view_id values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no view_id are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.view_id if v.view_id != null && length(v.view_id) > 0 }
}
output "dns_rrsets_lookup_zone_name_or_id" {
  description = "Map of zone_name_or_id values across all dns_rrsets_lookup, keyed the same as var.dns_rrsets_lookup except keys with no zone_name_or_id are omitted"
  value       = { for k, v in data.oci_dns_rrsets.dns_rrsets_lookup : k => v.zone_name_or_id if v.zone_name_or_id != null && length(v.zone_name_or_id) > 0 }
}

