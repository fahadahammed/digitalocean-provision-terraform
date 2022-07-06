resource "digitalocean_droplet" "my_desired_do_droplet" {
  image    = var.dropletImage
  name     = var.dropletName
  region   = var.dropletRegion
  size     = var.dropletSize
  vpc_uuid = digitalocean_vpc.do_vpc.id
  tags     = var.tags
  ssh_keys = [data.digitalocean_ssh_key.uploaded_ssh_key_in_do_account.id]
}