resource "azurerm_container_group" "containergroup" {
  name                = "containergroup"
  location            = var.AZURE_LOCATION
  resource_group_name = azurerm_resource_group.resourcegroup.name
  ip_address_type     = "Public"
  os_type             = "Linux"

  image_registry_credential {
    server   = azurerm_container_registry.containerregistry.login_server
    username = azurerm_container_registry.containerregistry.admin_username
    password = azurerm_container_registry.containerregistry.admin_password
  }

  container {
    name   = var.IMAGE_NAME
    image  = "${azurerm_container_registry.containerregistry.login_server}/${var.IMAGE_NAME}:${var.IMAGE_TAG}"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }
}
