#!/usr/bin/env bash
set -x
packer=`packer build jenkins-master-aws.json > ./packer.log `
ami=`tail -n 2 packer.log |awk -F": " '{print $NF}'|tr -d '\n'`
cd terraform
terraform init
terraform plan  -var "ami_id=$ami"
terraform apply -var "ami_id=$ami"