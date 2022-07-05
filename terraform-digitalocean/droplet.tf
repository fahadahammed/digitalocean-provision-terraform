resource "digitalocean_droplet" "static-cdn-origin" {
  image    = var.dropletImage
  name     = var.dropletName
  region   = var.dropletRegion
  size     = var.dropletSize
  vpc_uuid = digitalocean_vpc.CDN.id
  tags     = ["staticCDN"]
  ssh_keys = [data.digitalocean_ssh_key.magicbox.id]
}