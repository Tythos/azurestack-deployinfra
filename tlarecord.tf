resource "cloudflare_record" "tlarecord" {
  zone_id = data.cloudflare_zones.cfzones.zones[0].id
  name    = data.cloudflare_zones.cfzones.zones[0].name
  value   = azurerm_container_group.containergroup.ip_address
  type    = "A"
  ttl     = 3600
}
