// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract array{
    uint[] public dynamicNums = [1,2,3];
    uint[3] public fixedNums = [9,10,11];
    uint newNum;

    function ex() external{
        dynamicNums.push(4); // [1,2,3,4]
        newNum = dynamicNums[1]; 
        dynamicNums[1] = 777; // [1,777,3,4]
        delete dynamicNums[2]; // [1,777,0,4]
        dynamicNums.pop(); // [1,777,0].  prefectly working...

        uint[] memory a = new uint[](5);
        a[1] = 123;
    }
    function returnArr() external view returns (uint[] memory) {
        return dynamicNums;
    }
}

