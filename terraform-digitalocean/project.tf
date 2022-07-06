resource "digitalocean_project" "do_project" {
  name        = var.projectName
  description = var.projectDescription
  purpose     = var.projectPurpose
  environment = var.projectEnvironment
  resources   = [digitalocean_droplet.my_desired_do_droplet.urn]
}