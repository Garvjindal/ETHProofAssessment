# ETHProofAssessment
Module 3 Asessment

# SimpleToken Contract

## Overview

The `SimpleToken` contract is a simple ERC20-like token on the Ethereum blockchain named "SimpleToken" with the symbol "STK".

## Details

### Public Variables

- `name`: "SimpleToken"
- `symbol`: "STK"
- `supply`: Total supply (initially 0)

### Mappings

- `balances`: Tracks the token balance of each address

### Functions

#### `mint`

```solidity
function mint(address _address, uint _value) public
```
- **Description**: Increases total supply and the balance of `_address`.
- **Parameters**:
  - `_address`: Address to mint tokens to
  - `_value`: Amount of tokens to mint

#### `burn`

```solidity
function burn(address _from, uint _value) public
```
- **Description**: Decreases total supply and the balance of `_from`.
- **Parameters**:
  - `_from`: Address to burn tokens from
  - `_value`: Amount of tokens to burn
- **Requirement**: `_from` must have at least `_value` tokens

### Usage

1. **Minting Tokens**:

   ```solidity
   mint(0xYourAddress, 100);
   ```

2. **Burning Tokens**:

   ```solidity
   burn(0xYourAddress, 50);
   ```

