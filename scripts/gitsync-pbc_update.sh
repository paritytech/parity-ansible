export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook gitsync-pbc.yml -vvvv -i group_vars/inventory/gitsync --tags update --vault-password-file ~/.vault_pass.txt
