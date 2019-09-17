#!/bin/bash
set -e -u
BASEDIR=`dirname ${BASH_SOURCE[0]} | xargs readlink -f`

INVENTORY_FILE=$1

ansible-playbook playbook.yml -i $INVENTORY_FILE --extra-vars "usermanager=usuario passmanager=clave"
