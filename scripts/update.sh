playbook=$1

if [ -z $playbook ]
then
	echo "Error: Undefined playbook"
	exit 2
fi

ansible-playbook $playbook -vvvv -i group_vars/inventory/main --vault-password-file ~/.vault_pass.txt --tags update
