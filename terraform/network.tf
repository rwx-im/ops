resource "hcloud_network" "default" {
  name     = var.network_name
  ip_range = var.network_ip_range
}

resource "hcloud_network_subnet" "default" {
  type         = "cloud"
  network_id   = hcloud_network.default.id
  network_zone = var.network_zone
  ip_range     = var.network_ip_range
}

resource "hcloud_floating_ip" "primary_ipv4" {
  type          = "ipv4"
  home_location = var.location
}

resource "hcloud_floating_ip_assignment" "box_primary_ipv4" {
  floating_ip_id = hcloud_floating_ip.primary_ipv4.id
  server_id      = hcloud_server.box.id
}
