data "cloudflare_zone" "cfzone" {
  # the cloudflare dns zone is generated by the original registration
  name = var.HOST_NAME
}