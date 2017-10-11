pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Token is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Token(address _owner)  UpgradeableToken(_owner) {
    name = "Token";
    symbol = "NEW";
    totalSupply = 1000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}