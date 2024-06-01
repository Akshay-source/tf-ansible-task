#!/bin/bash

# Get the instance IP address from Terraform
INSTANCE_IP=$(terraform output -raw instance_ip)

# Create an Ansible inventory file
cat <<EOF > ansible/inventory.ini
[webserver]
$INSTANCE_IP ansible_user=ubuntu ansible_ssh_private_key_file=/id_rsa
EOF