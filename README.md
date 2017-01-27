# Ethcore Ansible

Deployment mechanism for the Ethcore web infrastructure

## Usage

Install Ansible:

```
sudo apt-get install ansible
```

or

```
brew install ansible
```

or (I think this is the preferred way)

```
pip install ansible
```

Next, you will need to create a file to hold your Vault password:
```
touch ./.vault_password
touch ~/.vault_pass.txt # for compatibility with old scripts. This will go soon.
# update the files with the Vault password
```

You can now encrypt/decrypt files:

```
ansible-vault encrypt foo.yml bar.yml baz.yml
ansible-vault decrypt foo.yml bar.yml baz.yml
```

Check the [Vault docs](http://docs.ansible.com/ansible/playbooks_vault.html) for more info.

(hint: you can find out the password from your fellow team members)

Finally, there is a number of scripts in the `scripts/` directory, you can execute any of them like this:

```
./scripts/update_ethcore_io.sh
```

## For push-release deployments:

Edit `group_vars/inventory/push_release` and add the server IP address under `[homestead_operations]` (make sure to encrypt the file before committing).

Create a new file in the root called `homestead_auto_updater.yml` and add a new playbook (see below). You can look at the contents of `ropsten_auto_updater` for reference. Then either encrypt the file or (probably more preferably) gitignore it.
```
- include: install_python.yml
  vars:
    hosts: homestead_operations
  tags: "dependency"

- hosts:
    - homestead_operations
  roles:
    - { role: parity,
        parity_deb_url: "http://d1h4xl4cr1h0mo.cloudfront.net/master/x86_64-unknown-linux-gnu/parity_1.6.0_amd64.deb",
        tags: "parity"}
    - { role: push_release,
        server_key_location: <the location of the operations server key on the host>,
        operations_contract_name: "parityoperations",
        assets_base_url: <the URL for artifacts>,
        secret_token: <secret token. not really needed, but useful to keep a note>,
        secret_token_hash: "65...",
        operations_server_pass: <password for the operations server key>,
        operations_server_key: <full operations server key in json format>,
        chain: "homestead",
        http_port: 80,
        tags: "push_release"}
```

To do a full deploy:

```
ansible-playbook homestead_auto_updater.yml -vvvv -i group_vars/inventory/push_release --vault-password-file ~/.vault_pass.txt
```

To update the deployed app:

```
ansible-playbook homestead_auto_updater.yml -vvvv -i group_vars/inventory/push_release --vault-password-file ~/.vault_pass.txt --tags update
```
