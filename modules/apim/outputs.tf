# output "azurerm_api_management" {
#   value = azurerm_api_management.
#   description = "Deployed function app name"
# }

# output "function_app_default_hostname" {
#   value = azurerm_function_app.function_app.default_hostname
#   description = "Deployed function app hostname"
# }

output "api_management_id" {
  value = azurerm_api_management.apim.id
  description = "Deployed APIM id"
}

output "api_management_gateway_url" {
  value = azurerm_api_management.apim.gateway_url
  description = "Deployed APIM gateway url"
}

output "api_management_public_ip_address" {
  value = azurerm_api_management.apim.public_ip_addresses
  description = "Deployed APIM public ip address"
}

output "api_management_private_ip_address" {
  value = azurerm_api_management.apim.private_ip_addresses
  description = "Deployed APIM private ip address"
}