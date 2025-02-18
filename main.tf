provider "kubernetes" {
  config_path = "~/.kube/config"  # Path to your kubeconfig file
}

resource "kubernetes_namespace" "example" {
  metadata {
    name = "terraform-example-namespace"
  }
}
