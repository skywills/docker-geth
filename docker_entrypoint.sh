#!/bin/sh

TESTNET=${TESTNET:-1}
TESTNET_MODE=${TESTNET_MODE:-rinkeby} ## could be rinkeby, testnet(Ropsten), dev
RPC_PORT=${RPC_PORT:-8545}
RPC_ADDRESS=${RPC_IPS:-0.0.0.0}
RPC_API=${RPC_API:-db,eth,net,web3,personal,txpool}
MODE=


if [ "${TESTNET}" == "1" ]; then
    MODE=--${TESTNET_MODE}
fi

# Wait forever
exec geth --rpc --rpcport ${RPC_PORT} --rpcapi ${RPC_API} --rpcaddr ${RPC_ADDRESS} ${MODE}
    