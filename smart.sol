// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.7;  // which version ?? 

contract myContract {    // equivalent to a class

    string public s = "Shivang";  // these datatypes are general

    address payable public buyer; // this holds a 20 bytes ethereum address
    address payable public seller; // this holds a 20 bytes ETH address

    int public n;
    uint public t;

    struct order{       // user defined data type
        string deci;
        bool completed;
    }

    function confirmOrder() public{     // executable blocks of code 

        buyer = payable(msg.sender);    // code that actually does stuff
    }

    constructor(string memory _text){ // executed when the contract is first created  
        s = _text;
    }
}


