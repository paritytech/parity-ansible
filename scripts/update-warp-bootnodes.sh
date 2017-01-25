export ANSIBLE_HOST_KEY_CHECKING=False

NETWORK=${1:-homestead}

ansible-playbook warp-bootnodes-$NETWORK.yml -vvvv -i group_vars/inventory/warp-bootnodes --vault-password-file ~/.vault_pass.txt --tags update 
