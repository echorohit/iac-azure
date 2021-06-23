terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # Root module should specify the maximum provider version
      # The ~> operator is a convenient shorthand for allowing only patch releases within a specific minor release.
      version = "~> 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resource_group" {
  name = "${var.project}-${var.environment}-resource-group"
  location= var.location
}


resource "azurerm_api_management" "apim" {
  name = "${var.project}-${var.environment}-apim"
  location = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  publisher_name = var.publisher_name
  publisher_email = var.publisher_email
  sku_name = var.sku_name
  tags = var.tags

  policy {
    xml_content = <<XML
    <policies>
      <inbound />
      <backend />
      <outbound />
      <on-error />
    </policies>
XML

  }
}