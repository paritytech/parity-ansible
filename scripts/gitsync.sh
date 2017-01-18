export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook gitsync.yml -vvvv -i group_vars/inventory/gitsync --vault-password-file ~/.vault_pass.txt
