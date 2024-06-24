# MyToken

## Overview

The `MyToken` contract is a simple ERC20-like token implemented in Solidity. It allows the creation and management of a custom token called "NikCoin" (abbreviated as "NKC"). 
The contract includes basic functionalities such as minting new tokens to a recipient's address and burning tokens from a holder's address.

## Features

- Mint new tokens to an address.
- Burn tokens from an address.
- Check token balances for any address.

## Usage

### Public Variables

#### `Tokenname`

The name of the token.

- **Type**: `string`
- **Value**: `"NikCoin"`

#### `TokenAbbrv`

The abbreviation of the token.

- **Type**: `string`
- **Value**: `"NKC"`

#### `totalSupply`

The total supply of the tokens.

- **Type**: `uint256`
- **Value**: `0` (initially)

### Mappings
- **addressBalances**: A mapping from addresses to their respective balances.

### Functions

#### `mint(address recipient, uint256 _value) public`

Mints new tokens to the specified recipient's address.

- **Parameters**: 
  - `recipient`: The address of the recipient.
  - `_value`: The amount of tokens to mint.
  
- **Effects**:
  - Increases the `totalSupply` by `_value`.
  - Increases the balance of `recipient` by `_value`.

#### `burn(address holder, uint256 _value) public`

Burns tokens from the specified holder's address.

- **Parameters**: 
  - `holder`: The address of the token holder.
  - `_value`: The amount of tokens to burn.
  
- **Requirements**:
  - The balance of `holder` must be greater than or equal to `_value`.
  
- **Effects**:
  - Decreases the `totalSupply` by `_value`.
  - Decreases the balance of `holder` by `_value`.

### Example

Below is an example of how to interact with the `MyToken` contract:

```solidity
// Deploy the contract
MyToken myToken = new MyToken();

// Mint 1000 tokens to an address
myToken.mint(0xRecipientAddress, 1000);

// Check the balance of the recipient
uint256 balance = myToken.addressBalances(0xRecipientAddress); // Should return 1000

// Burn 500 tokens from the recipient's address
myToken.burn(0xRecipientAddress, 500);

// Check the balance of the recipient again
balance = myToken.addressBalances(0xRecipientAddress); // Should return 500

// Check the total supply of tokens
uint256 totalSupply = myToken.totalSupply(); // Should return 500
```
## License
This project is licensed under the MIT License.
