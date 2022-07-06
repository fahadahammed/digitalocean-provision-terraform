resource "digitalocean_vpc" "do_vpc" {
  name     = var.vpcName
  region   = var.dropletRegion
  ip_range = var.vpcIP_Range
}