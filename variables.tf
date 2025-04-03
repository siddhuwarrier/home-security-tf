variable "scc_firewall_manager_base_url" {
  description = "The base URL for the SCC Firewall Manager API."
  type        = string
  default     = "https://eu.manage.security.cisco.com"
}

variable "scc_firewall_manager_api_token" {
  description = "The API token for the SCC Firewall Manager."
  type        = string
}
