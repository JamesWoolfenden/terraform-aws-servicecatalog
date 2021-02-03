module "catalog" {
  source      = "../../"
  common_tags = var.common_tags
  portfolio = {
    name          = "Bridgecrew Portfolio"
    description   = "List of my organizations apps"
    provider_name = "Bridgecrew"
  }
}
