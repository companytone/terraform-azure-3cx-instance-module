output "SSHCommand" {
  value = "sshpass -p var.AdminPassword -o \"StrictHostKeyChecking no\" ssh ${var.AdminUsername}@${cloudflare_record.CFDNSRecord.hostname}"
}
