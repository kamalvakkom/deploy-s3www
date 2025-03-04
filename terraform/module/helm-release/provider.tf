terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "3.0.0-pre2"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = var.config_path
  }
}

terraform {
  required_version = ">= 1.7"
}
