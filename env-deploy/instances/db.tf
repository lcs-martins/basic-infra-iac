module "db" {
  name   = "${local.instance_prefix}-db"
  source = "../../modules/instance-db"

  project                      = var.project
  region                       = var.region
  zone                         = var.zone
  env                          = var.env
  company                      = var.company
  machine_type                 = var.machine_type_db
  instance_name                = "${local.instance_prefix}-db1"
  instance_deletion_protection = var.deletion_protection
  service_account_email        = var.service_account_email
}