resource "local_file" "k8s_config" {
    content     = "${digitalocean_kubernetes_cluster.k8s.kube_config.0.raw_config}"
    filename = "kubeconfig.yaml"
}