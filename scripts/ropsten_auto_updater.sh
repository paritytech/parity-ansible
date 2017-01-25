export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook ropsten_auto_updater.yml -vvvv -i group_vars/inventory/push_release --vault-password-file ~/.vault_pass.txt
