# FaucetOne - Simple Token Faucet

FaucetOne is a simple token faucet smart contract that allows users to mint a fixed amount of tokens. Each address is limited to claiming only once, ensuring fair distribution of tokens.

## Features

- **One-Time Claim**: Each address can claim tokens only once.
- **Fixed Token Amount**: A predetermined amount of tokens is distributed per claim.
- **Trustless & Secure**: Ensures fair token distribution without central control.
- **On-Chain Deployment**: Deployed on the Edu Chain for easy access.

## Deployed Address

- **Edu Chain Address**: `0x08C643d713B69e63eeC4Bffd1A6736b8A8c799bE`

## How to Use

1. Connect your wallet to the Edu Chain.
2. Call the `claimTokens()` function from the smart contract.
3. Receive your allocated tokens (only once per address).

## Smart Contract Overview

The smart contract is written in Solidity and maintains a mapping to ensure that each address claims tokens only once. It allows the owner to deposit funds and distribute them in a secure manner.

## License

This project is open-source and available under the MIT License.

---

Feel free to contribute or suggest improvements!
