#!/bin/sh

if [ ! -r '.vault_password' ]; then
	exit 1
fi

tmp=`mktemp`
cat > $tmp

ansible-vault encrypt $tmp --vault-password-file=.vault_password > /dev/null 2>&1

cat "$tmp"
rm $tmp
