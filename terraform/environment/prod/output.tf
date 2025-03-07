output "user" {
  value     = module.helm_release.user
  sensitive = true
}

output "password" {
  value     = module.helm_release.password
  sensitive = true
}
