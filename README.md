## SOBRE

Resposítório de códigos terraform.

O código provisiona uma infra básica contendo:

RECURSO   | TIPO |DESCRIÇÃO
--------- | ---- | ------
GCE | Windows Server 19 | Instância de VM para aplicação
GCE | Debian 9 | Instância de VM para banco de dados
GCS | Bucket | Storage para armazenamento de remote-state

## AMBIENTE:

Ambiente de teste

## PRECAUÇÕES:

Ao provisionar a infraestrutura do código, sempre utilizar **test.tfvars** para alterações, para que você sempre esteja seguro de trabalhar com as configurações necessárias e gastos desnecessários não ocorram.

#### SEGUIR ESTA ORDEM DE EXECUÇÃO PARA O TERRAFORM 

```bash

# mudanças no arquivo .tfvars 

cd remote-state-bucket
terraform init && terraform apply -var-file='..\..\test.tfvars'
cd ..
cd instances
terraform init && terraform apply -var-file='..\..\test.tfvars'

```
## TERRAFORM VERSION

```bash
terraform V0.15
```
