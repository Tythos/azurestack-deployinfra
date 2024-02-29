resource "azurerm_container_registry" "containerregistry" {
  name                = "azurestackdeployinfracontainerregistry"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  location            = var.AZURE_LOCATION
  sku                 = "Basic"
  admin_enabled       = true
}
