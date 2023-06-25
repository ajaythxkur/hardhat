// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.4.22 < 0.9.0;

import "hardhat/console.sol";

contract Token {
    string public name =  "HardhatToken";
    string public symbol = "HT";
    uint public totalSupply = 1000;
    address public owner;
    mapping(address=>uint) balances;
    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }
    function transfer(address to, uint amount) external{
        console.log("**Sender's balance is %s tokens**", balances[msg.sender]);
        console.log("**Sender is sending %s tokens to %s address**", amount, to);
        require(balances[msg.sender] > amount, "Not enough balance");
        balances[msg.sender]-=amount;
        balances[to] +=amount;
    }
    function balanceOf(address addr) external view returns (uint){
        return balances[addr];
    }
}