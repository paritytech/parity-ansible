#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook ethereum_services.yml -vvvv -i group_vars/inventory/ethereum_services --vault-password-file ~/.vault_pass.txt
