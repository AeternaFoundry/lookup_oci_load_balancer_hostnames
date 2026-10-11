output "load_balancer_hostnames_lookup_id" {
  description = "Map of id values across all load_balancer_hostnames_lookup, keyed the same as var.load_balancer_hostnames_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_load_balancer_hostnames.load_balancer_hostnames_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_hostnames_lookup_filter" {
  description = "Map of filter values across all load_balancer_hostnames_lookup, keyed the same as var.load_balancer_hostnames_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_load_balancer_hostnames.load_balancer_hostnames_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "load_balancer_hostnames_lookup_hostnames" {
  description = "Map of hostnames values across all load_balancer_hostnames_lookup, keyed the same as var.load_balancer_hostnames_lookup except keys with no hostnames are omitted"
  value       = { for k, v in data.oci_load_balancer_hostnames.load_balancer_hostnames_lookup : k => v.hostnames if v.hostnames != null && length(v.hostnames) > 0 }
}
output "load_balancer_hostnames_lookup_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_hostnames_lookup, keyed the same as var.load_balancer_hostnames_lookup except keys with no load_balancer_id are omitted"
  value       = { for k, v in data.oci_load_balancer_hostnames.load_balancer_hostnames_lookup : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}

