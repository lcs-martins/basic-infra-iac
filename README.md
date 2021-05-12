## ABOUT

This code provides an infrastructure for postgresql database, using VMs (IaaS model) for installation and configuration of Postgresql DBMS.

This environment was designed for the execution of tests, such as:
- SGBD version upgrade scripts
- Scripts for cluster change.
- Other necessary tests that have similarity or are identical to the diagram below.

## ENVIRONMENT:

Test environment for simple infrastructure containing only database server

! [DIAGRAMA_INFRA] (/ img / salutis-infra-template-disco-attached.png)

## PRECAUTIONS:

When provisioning the code infrastructure, always use ** test.tfvars ** for changes, so that you are always safe to work with the necessary settings and unnecessary expenses do not occur.

## TERRAFORM VERSION

`` terraform
terraform V0.15