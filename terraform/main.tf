terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}

provider "kubernetes" {
  config_path = "/var/lib/jenkins/.kube/config"
}


resource "kubernetes_namespace" "dev" {
  metadata {
    name = "dev"
  }
}
