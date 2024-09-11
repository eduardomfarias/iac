# Grupo DevOps
module "sa-devops" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.0"
  project_id    = var.project_id
  prefix        = var.prefix
  names         = var.devops_names
  project_roles = var.devops_project_roles
}

# Grupo Developers
module "sa-developers" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 4.0"
  project_id    = var.project_id
  prefix        = var.prefix
  names         = var.developers_names
  project_roles = var.developers_project_roles
}