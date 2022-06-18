resource "random_id" "suffix" {
  byte_length = 4
}

module "env_resources" {
  for_each = var.envs

  source = "./module"

  env      = each.value
  location = var.location
  suffix   = lower(random_id.suffix.hex)
}