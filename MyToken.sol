// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken {

    // Public variables
    string public Tokenname = "NikCoin";
    string public TokenAbbrv = "NKC";
    uint256 public totalSupply = 0;

    // Mapping from address to balance
    mapping(address => uint256) public addressBalances;

    // Mint function
    function mint(address recipient, uint256 _value) public {
        totalSupply += _value;
        addressBalances[recipient] += _value;
    }

    // Burn function
    function burn(address holder, uint256 _value) public {
        if (addressBalances[holder] >= _value) {
            totalSupply -= _value;
            addressBalances[holder] -= _value;
        }
    }
}
