resource "digitalocean_vpc" "CDN" {
  name     = "CDN"
  region   = "nyc3"
  ip_range = "10.20.0.0/16"
}