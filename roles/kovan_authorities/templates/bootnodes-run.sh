#!/bin/bash

parity --chain kovan --no-dapps --no-ui --max-peers 500 --snapshot-peers 1200 --pruning-history 1200 --no-discovery  --jsonrpc-apis web3,eth,parity,parity_set,net,traces,rpc --no-warp --auto-update=all --allow-ips public
