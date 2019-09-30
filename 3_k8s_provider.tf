provider "kubernetes" {
  config_path="${local_file.k8s_config.filename}"
}

resource "kubernetes_namespace" "namespace" {
    metadata {
        name = "logging"
    }
}
