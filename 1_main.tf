resource "digitalocean_kubernetes_cluster" "k8s" {
    name    = "mango"
    region  = "nyc1"
    version = "1.15"

    node_pool {
        name       = "rampage"
        size       = "s-1vcpu-2gb"
        node_count = 2
    }
}
