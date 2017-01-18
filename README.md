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

Any files containing '*_vault*' in their names will be automatically encrypted before commits. 


(hint: you can find out the password from your fellow team members)

Finally, there is a number of scripts in the `scripts/` directory, you can execute any of them like this:

```
./scripts/update_ethcore_io.sh
```
