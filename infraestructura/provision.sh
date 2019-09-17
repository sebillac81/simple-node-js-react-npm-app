#!/usr/bin/env sh
set -e -u

INVENTORY_FILE=$1

chmod 0644 ./infraestructura/insecure_private_key
ansible-playbook ./infraestructura/playbook.yml -i $INVENTORY_FILE -vvvv --extra-vars "usermanager=usuario passmanager=clave"
