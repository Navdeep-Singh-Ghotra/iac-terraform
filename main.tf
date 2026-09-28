terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.36.0"
    }
  }
}
provider "kubernetes" {
  # Configuration options
  config_path = "~/.kube/config"
}
resource "kubernetes_namespace" "terraform" {
  metadata {
    name = "terraform"
  }
}

resource "kubernetes_deployment" "nginxterra" {
  metadata {
    name      = "terraform-nginx"
    namespace = "terraform"
    labels = {
      test = "terraformginx"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        test = "terraformginx"
      }
    }

    template {
      metadata {
        labels = {
          test = "terraformginx"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "example"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}


