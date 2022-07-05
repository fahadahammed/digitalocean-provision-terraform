output "droplet-private-ip" {
  value = digitalocean_droplet.static-cdn-origin.ipv4_address_private
}

output "droplet-public-ip" {
  value = digitalocean_droplet.static-cdn-origin.ipv4_address
}

output "droplet-tags" {
  value = digitalocean_droplet.static-cdn-origin.tags
}

output "droplet-name" {
  value = digitalocean_droplet.static-cdn-origin.name
}

output "droplet-hourly-price" {
  value = digitalocean_droplet.static-cdn-origin.price_hourly
}