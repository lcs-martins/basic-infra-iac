module "app" {
  name   = "${local.instance_prefix}-app1"
  source = "../../modules/instance-app"

  project                      = var.project
  region                       = var.region
  zone                         = var.zone
  env                          = var.env
  company                      = var.company
  machine_type                 = var.machine_type_app
  instance_name                = "${local.instance_prefix}-app1"
  instance_deletion_protection = var.deletion_protection
  service_account_email        = var.service_account_email
  
}
