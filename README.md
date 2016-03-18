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

Next, you will need to create a file to hold your Vault password:
```
touch ~/.vault_pass.txt
# update the file with the Vault password
```

(hint: you can find out the password from your fellow team members)

Finally, there is a number of scripts in the `scripts/` directory, you can execute any of them like this:

```
./scripts/update_ethcore_io.sh
```
