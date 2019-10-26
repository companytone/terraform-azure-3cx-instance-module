output "SSHCommand" {
  value = "ssh ${var.AdminUsername}@${cloudflare_record.CFDNSRecord.hostname}"
}

output "password" {
  value = var.AdminPassword
}

