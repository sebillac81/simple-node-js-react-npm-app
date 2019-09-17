#!/usr/bin/env sh
set -e -u

INVENTORY_FILE=$1

ansible-playbook playbook.yml -i $INVENTORY_FILE --extra-vars "usermanager=usuario passmanager=clave"
