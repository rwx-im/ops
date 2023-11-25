variable "network_name" {
  type        = string
  description = "The name of the private network."
}

variable "network_zone" {
  type        = string
  description = "The zone the network is available in."
}

variable "network_ip_range" {
  type        = string
  description = "The private IP range of the network in CIDR notation."
}

variable "ssh_keys" {
  type        = list(string)
  description = "List of SSH key IDs or names."
}

variable "location" {
  type        = string
  description = "The default location for resources."
}
