variable "vcd_edge_name" {
  type        = string
  description = "The name of the edge gateway"
}

variable "name" {
  type        = string
  description = "A name for NAT rule"
}

variable "description" {
  type        = string
  description = "An optional description of the NAT rule"
}

variable "state" {
  type        = bool
  description = "Enables or disables NAT rule (default true)"
  default     = true
}

variable "type" {
  type        = string
  description = "One of DNAT, NO_DNAT, SNAT, NO_SNAT, REFLEXIVE"
  default     = "DNAT"
}

variable "ext_ip" {
  description = ""
  type        = string
  default     = ""
}

variable "int_ip" {
  type        = string
  description = "The internal address for the NAT Rule. This must be supplied as a single IP or Network CIDR."
}

variable "in_port" {
  type        = string
  description = "For DNAT only. This represents the external port number or port range when doing DNAT port forwarding from external to internal."
  default     = ""
}

variable "dst_ip" {
  type        = string
  description = "For SNAT only. The destination addresses to match in the SNAT Rule. This must be supplied as a single IP or Network CIDR."
  default     = ""
}

variable "app_id" {
  type        = string
  description = "Application Port Profile to which to apply the rule."
  default     = ""
}
