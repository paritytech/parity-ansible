#!/bin/sh

if [ ! -r '.vault_password' ]; then
  exit 1
fi

export PAGER='cat'
CONTENT=`ansible-vault view "$1" --vault-password-file=.vault_password 2> /dev/null`

if echo "$CONTENT" | grep -q 'ERROR: data is not encrypted'; then
  cat "$1"
else
  echo "$CONTENT"
fi
