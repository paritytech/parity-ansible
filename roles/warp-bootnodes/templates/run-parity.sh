#!/bin/bash
parity --min-peers 5 --max-peers 5 --snapshot-peers 500 --pruning-history 1200 --warp --chain {{ chain }} --jsonrpc-apis web3,eth,parity,parity_set,net,traces,rpc
