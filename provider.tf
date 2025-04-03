terraform {
  required_providers {
    cdo = {
      source  = "CiscoDevNet/cdo"
      version = "3.5.4"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}
data "aws_secretsmanager_secret" "scc_firewall_manager_api_token" {
  arn = local.api_token_secret_arn
}

data "aws_secretsmanager_secret_version" "scc_firewall_manager_api_token" {
  secret_id = data.aws_secretsmanager_secret.scc_firewall_manager_api_token.id
}

provider "cdo" {
  base_url  = var.scc_firewall_manager_base_url
  api_token = data.aws_secretsmanager_secret_version.scc_firewall_manager_api_token.secret_string
}