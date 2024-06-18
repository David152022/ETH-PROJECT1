//SPDX-License-Identifier:MIT
pragma solidity 0.8.26;

contract MyToken {

    // public variables here
    string public tokenName = "BROWN";
    string public tokenAbbry = "BRO";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mintToken(address _addr1,uint _value)public {
        totalSupply += _value;
        balances[_addr1] += _value;
    }

    // burn function
    function burnTokens(address _addr1,uint _value)public{
        if(_value<=balances[_addr1]){
            totalSupply -= _value;
            balances[_addr1] -=_value;
        }
    }
}
