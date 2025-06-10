// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract mappin{
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;
    

    function example() external returns(uint){
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)];  // 0

        uint fina = bal + bal2;

        balances[msg.sender] +=123;

        delete balances[msg.sender];

        return fina;
    }

}
