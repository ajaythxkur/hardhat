// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.8.0;

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
        require(balances[msg.sender] > amount, "Not enough balance");
        balances[msg.sender]-=amount;
        balances[to] +=amount;
    }
    function balanceOf(address addr) external view returns (uint){
        return balances[addr];
    }
}