module "db" {
  name   = "${local.instance_prefix}-db"
  source = "../../modules/instance-db"

  ssh_user                     = var.ssh_user   
  ssh_key                      = var.ssh_key    
  ssh_pub_key                  = var.ssh_pub_key

  project                      = var.project
  region                       = var.region
  zone                         = var.zone
  env                          = var.env
  company                      = var.company
  machine_type                 = var.machine_type_db
  instance_name                = "${local.instance_prefix}-db"
  instance_deletion_protection = var.deletion_protection
  service_account_email        = var.service_account_email
  palavras_chaves              = var.palavras_chaves
  snapshot_db_srv              = var.snapshot_db_srv  
}