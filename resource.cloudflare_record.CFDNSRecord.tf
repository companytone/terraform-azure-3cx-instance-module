resource "cloudflare_record" "CFDNSRecord" {
  zone_id  = var.cloudflare_zone_id
  name     = lower(var.CustomerSubdomain)
  value    = azurerm_public_ip.AzurePublicIP.ip_address
  type     = "A"
  ttl      = 300
  priority = 0
}
