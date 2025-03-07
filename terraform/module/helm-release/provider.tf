terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.17.0"
    }

  }
}

provider "helm" {
  kubernetes {
    config_path = var.config_path
  }
}

terraform {
  required_version = ">= 1.11"
}
