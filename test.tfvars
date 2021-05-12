#
# DEFAULT
#
//GLOBAL
env                     = "test"

//PROJECT
region                  = "us-east1"
zone                    = "us-east1-b"
credentials             = "../.credentials/credentials.json" // PATH TO credentials.json
project                 = "teste-env" // PROJECT ID
company                 = "tecnologia" // USED TO NAME RESOURCES AND TAG'S GENERATION. EX.: COMPANY-ENV, xpt-test
service_account_email   = "terraform@teste-env.iam.gserviceaccount.com" // A GCP SERVICE ACCOUNT FOR USE BY TERRAFORM
palavras_chaves         = "upgrade-sgbd" // USED FOR TAG'S GENERATION

//INSTANCES
machine_type_db         = "n1-standard-1"
boot_disk_type          = "pd-standard"
deletion_protection     = false // true for production envirmont
image                   = "debian-9-stretch-v20200805"

# # SNAPSHOT URL IS: 
# # https://console.cloud.google.com/compute/projects/[ PROJECT NAME ]/global/snapshots/[ SNAPSHOT_ID ]}"
# snapshot_db_srv         = "https://console.cloud.google.com/compute/projects/[project name]]/global/snapshots/[ snapshot-id ]"

# If a script need run or uploaded to instance, ssh configuration need be set:
ssh_user                = "[ SSH USER NAME ]"
ssh_key                 = "../.ssh/key" // PATH/TO/PRIVATE/KEY
ssh_pub_key             = "../.ssh/key.pub" // PATH/TO/PUBLIC/KEY