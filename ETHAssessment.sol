// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleToken {

    // Public variables to store details about the coin
    string public name = "SimpleToken";
    string public symbol = "STK";
    uint256 public supply = 0;

    // Mapping to store balances of addresses
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and balance of the sender
    function mint(address _address, uint _value) public {
        supply += _value;
        balances[_address] += _value;
    }

    // Burn function to decrease total supply and balance of the sender
    function burn(address _from, uint _value) public {
        require(balances[_from] >= _value, "Insufficient balance to burn");
        supply -= _value;
        balances[_from] -= _value;
    }
}
