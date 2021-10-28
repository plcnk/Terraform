resource "digitalocean_kubernetes_cluster" "foo" {
  name    = var.cluster_name
  region  = var.region
  version = var.k8s_version

  node_pool {
    name       = var.pool_name
    size       = var.size
    node_count = var.node_count
  }
}
