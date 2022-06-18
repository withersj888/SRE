module "env_resources" {
  for_each = var.envs

  source = "./module"

  env      = each.value
  location = var.location
}