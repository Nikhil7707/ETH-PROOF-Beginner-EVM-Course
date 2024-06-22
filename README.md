# MyToken Contract

## Overview
`MyToken` is a simple ERC-20-like smart contract deployed on the Ethereum blockchain. This contract allows minting and burning of tokens, managing a token supply, and tracking balances for different addresses.

## Token Details
- **Token Name**: NikCoin
- **Token Abbreviation**: NKC
- **Total Supply**: Dynamic, starts at 0 and changes with minting and burning.

## Contract Details

### Public Variables
- **Tokenname**: The name of the token, "NikCoin".
- **TokenAbbrv**: The abbreviation of the token, "NKC".
- **totalSupply**: The total supply of the tokens, initially set to 0.

### Mappings
- **addressBalances**: A mapping from addresses to their respective balances.

### Functions

#### mint
Mints new tokens and adds them to the recipient's balance and the total supply.


```solidity
function mint(address recipient, uint256 _value) public

function burn(address holder, uint256 _value) public

