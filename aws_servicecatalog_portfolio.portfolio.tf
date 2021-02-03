resource "aws_servicecatalog_portfolio" "portfolio" {
  name          = var.portfolio["name"]
  description   = var.portfolio["description"]
  provider_name = var.portfolio["provider_name"]
}
