pragma solidity 0.8.7;
contract SBGToken {
string public name = SHIBA INU GOLD;
string public symbol = SBG;
uint256 public totalSupply = 1000000000000000000000000; // 1 million tokens
uint8 public decimals = 18;

event Transfer(address indexed _from, address indexed _to, uint256 _value);

constructor() {
balanceOf[msg.sender] = totalSupply;
}

function transfer(address _to, uint256 _value)
public
returns (bool success) {
require(balanceOf[msg.sender] ;= _value);
balanceOf[msg.sender] -= _value;
balanceOf[_to] += _value;
emit Transfer(msg.sender, _to, _value);
return true;
}
