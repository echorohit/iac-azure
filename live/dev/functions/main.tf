module "azure-functions" {
  source = "../../../modules/azure-functions"
  location= var.location
  project=var.project
  environment=var.environment
}