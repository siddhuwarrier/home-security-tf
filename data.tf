locals {
  api_token_secret_arn = "arn:aws:secretsmanager:eu-west-1:686080651210:secret:park-hill-scc-firewall-manager-api-token-DjST0P"
}

data "cdo_cdfmc" "cdfmc" {}

data "cdo_tenant" "current" {}