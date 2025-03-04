module "helm_release" {
  source = "../../module/helm-release"

  config_path = var.config_path
}
