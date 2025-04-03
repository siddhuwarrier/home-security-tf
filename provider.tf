terraform {
  required_providers {
    cdo = {
      source  = "CiscoDevNet/cdo"
      version = "3.5.4"
    }
  }
}

provider "cdo" {
  base_url  = var.scc_firewall_manager_base_url
  api_token = var.scc_firewall_manager_api_token
}
