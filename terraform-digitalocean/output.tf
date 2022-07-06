output "droplet-private-ip" {
  value = digitalocean_droplet.my_desired_do_droplet.ipv4_address_private
}

output "droplet-public-ip" {
  value = digitalocean_droplet.my_desired_do_droplet.ipv4_address
}

output "droplet-tags" {
  value = digitalocean_droplet.my_desired_do_droplet.tags
}

output "droplet-name" {
  value = digitalocean_droplet.my_desired_do_droplet.name
}

output "droplet-hourly-price" {
  value = digitalocean_droplet.my_desired_do_droplet.price_hourly
}