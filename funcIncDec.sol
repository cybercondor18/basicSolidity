// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Alot {
    uint public count = 0;
    // there are two types of fn which do not change the chain view(which can use local and state var) while pure(uses local var only)
    // now here we also have external which alows the fn to be used from outside after deployment...

    function inc() external{
        count += 1;
    }
    function dec() external{
        count -=1;
    }
}