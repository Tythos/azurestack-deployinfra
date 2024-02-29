variable "AZURE_CLIENT_ID" {
  type        = string
  description = "Client ID for Azure service principal"
}

variable "AZURE_TENANT_ID" {
  type        = string
  description = "Tenant ID for Azure service principal"
}

variable "AZURE_CLIENT_SECRET" {
  type        = string
  description = "Client Secret for Azure service principal"
}

variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
  description = "Subscription ID for Azure service principal"
}

variable "AZURE_LOCATION" {
  type        = string
  description = "Azure region into which resources will be deployed"
}

variable "IMAGE_NAME" {
  type        = string
  description = "Name of image to be retrieved from registry"
}

variable "IMAGE_TAG" {
  type        = string
  description = "Specific tag of image name to be retrieved"
}

variable "HOST_NAME" {
  type        = string
  description = "Host address used to manage domain records"
}

variable "CLOUDFLARE_API_TOKEN" {
  type        = string
  description = "API token for CloudFlare automation"
}
