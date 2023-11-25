resource "hcloud_server" "box" {
  name        = "box"
  server_type = "cx21"
  location    = var.location
  image       = "debian-12"
  ssh_keys    = var.ssh_keys

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }

  lifecycle {
    ignore_changes = [ssh_keys]
  }
}

resource "hcloud_server_network" "box" {
  server_id  = hcloud_server.box.id
  network_id = hcloud_network.default.id
}
