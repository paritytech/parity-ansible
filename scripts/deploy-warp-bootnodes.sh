export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook warp-bootnodes.yml -vvvv -i group_vars/inventory/warp-bootnodes --vault-password-file ~/.vault_pass.txt
