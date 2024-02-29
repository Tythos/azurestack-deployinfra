output "ACR_LOGIN_SERVER" {
  description = "URL of Azure container registry instance"
  value       = azurerm_container_registry.containerregistry.login_server
}

output "ACR_LOGIN_USER" {
  description = "Username of ACR admin user"
  value       = azurerm_container_registry.containerregistry.admin_username
}

output "ACR_LOGIN_PASS" {
  description = "Password of ACR admin user"
  value       = azurerm_container_registry.containerregistry.admin_password
  sensitive   = true
}

output "CONTAINER_ADDRESS" {
  description = "IP address assigned to container group"
  value       = azurerm_container_group.containergroup.ip_address
}
