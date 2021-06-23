module "apim" {
  source="../../../modules/apim"
  environment=var.environment
  project=var.project
  location = var.location
  publisher_name = var.publisher_name
  publisher_email = var.publisher_email
  sku_name = var.sku_name
  tags = var.tags
}