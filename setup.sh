#!/bin/sh

print "\n <<< setup start..."

print "\n >>> make the main folder volumes"
mkdir -p tfstate volumes/artifactory/data volumes/oracle/data volumes/openldap/data && ls -al

print "\n >>> start vagrant..."
vagrant up

print "\n >>> provision with terraform..."
terraform-0.12.18 init && terraform-0.12.18 apply -auto-approve

print "\n <<< setup done!"