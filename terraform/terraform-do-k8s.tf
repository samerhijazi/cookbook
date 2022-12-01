resource "digitalocean_kubernetes_cluster" "foo" {
  name   = "foo"
  region = "fran1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.24.4-do.0"

  node_pool {
    name       = "pool-instana"
    size       = "s-2vcpu-2gb"
    node_count = 2

    taint {
      key    = "workloadKind"
      value  = "database"
      effect = "NoSchedule"
    }
  }
}