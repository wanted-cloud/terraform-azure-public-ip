output "public_ip_address" {
  description = "Object of the public IP address."
  value       = azurerm_public_ip.this.ip_address
}