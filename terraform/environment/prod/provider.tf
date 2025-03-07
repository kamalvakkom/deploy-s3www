provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

terraform {
  required_version = ">= 1.11"
}
