#!/bin/sh

if [ ! -r '.vault_password' ]; then
	exit 1
fi

tmp=`mktemp`
cat > $tmp

export PAGER='cat'
CONTENT=`ansible-vault view "$tmp" --vault-password-file=.vault_password 2> /dev/null`

if echo "$CONTENT" | grep -q 'ERROR: data is not encrypted'; then
	echo "Looks like one file was commited clear text"
	echo "Please fix this before continuing !"
	exit 1
else
	echo "$CONTENT"
fi

rm $tmp
