#!/bin/bash

./parity --chain chainspec.json --jsonrpc-apis web3,eth,parity,parity_set,net,traces,rpc,personal,parity_accounts --auto-update=all --no-warp --no-periodic-snapshot --reserved-only --reserved-peers reserved-nodes
