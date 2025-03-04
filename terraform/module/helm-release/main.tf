resource "random_password" "minio_access_key" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_password" "minio_secret_key" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "helm_release" "s3www" {
  name  = "s3www"
  chart = "../../../helm-chart/s3www"
  set {
    name  = "minio.enabled"
    value = "true"
  }
  set {
    name  = "minio.rootUser"
    value = random_password.minio_access_key.result
  }
  set {
    name  = "minio.rootPassword"
    value = random_password.minio_secret_key.result
  }
}

output "user" {
  value     = random_password.minio_access_key.result
  sensitive = true
}

output "password" {
  value     = random_password.minio_secret_key.result
  sensitive = true
}
