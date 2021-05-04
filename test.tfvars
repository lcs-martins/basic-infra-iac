#
# DEFAULT
#
// GLBOAL

env="test"

// INSTANCES-SETTINGS

deletion_protection = false

// PROJECT-SETINGS

region = "us-east1"
zone = "us-east1-b"

#
# MUDAR A CADA NOVO PROJETO ( CHANGE PER EACH NEW PROJECT )
#

// user config 

project = "teste-env" // id de projeto gcp ( gcp project id )
company="tecnologia" // usado para gerar prefixo de nomes de recursos e tags. ( used to generate prefix names of resources and tags. )
service_account_email = "terraform@teste-env.iam.gserviceaccount.com" // e-mail da conta de serviço responsável pela execução do código terraform.
machine_type_app = "n1-standard-1" // tipo de maquina para instancia de aplicação. ( type of machine for application instance. )
machine_type_db = "n1-standard-1" // tipo de maquina para instancia de banco de dados. ( machine type for database instance. )