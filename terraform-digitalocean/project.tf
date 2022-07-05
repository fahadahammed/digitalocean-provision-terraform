resource "digitalocean_project" "CDN" {
  name        = "CDN"
  description = "Resources involving CDN."
  purpose     = "Web Application"
  environment = "Production"
  resources   = [digitalocean_droplet.static-cdn-origin.urn]
}