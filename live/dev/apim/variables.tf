variable "project" {
  type=string
  description="Project name"
}

variable "environment" {
  type = string
  description = "Environment (dev / stage / prod)"
}

variable "location" {
  type = string
  description = "Azure region to deploy module to"
}

variable "publisher_name" {
  type = string
  description="APIM publisher name"  
}

variable "publisher_email" {
  type = string
  description="APIM publisher email"  
}

variable "sku_name" {
  type = string
  description="SKU Name"  
}

variable "tags" {
  
}