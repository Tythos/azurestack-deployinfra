resource "cloudflare_record" "tlarecord" {
  zone_id = data.cloudflare_zone.cfzone.id
  name    = "@"
  value   = azurerm_container_group.containergroup.ip_address
  type    = "A"
  ttl     = 3600
}
