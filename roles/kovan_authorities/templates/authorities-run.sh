#!/bin/bash

parity --chain kovan --no-dapps --no-ui --password pass --engine-signer {{signer_address}} --reseal-on-txs none --force-sealing --jsonrpc-apis web3,eth,parity,parity_set,net,traces,rpc  --gas-floor-target 5000000 --auto-update=all
