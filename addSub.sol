// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract addSub {
    function add(uint a, uint b) external pure returns (uint) {
        return a + b;
    }
    function subtract(uint a, uint b) external pure returns (uint) {
        return a - b;
    }
}
