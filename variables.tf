variable "load_balancer_hostnames_lookup" {
  description = <<EOT
Map of load_balancer_hostnames_lookup, attributes below
Required:
    - load_balancer_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    load_balancer_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

