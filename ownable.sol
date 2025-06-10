// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
// state/global var
// functions 
// modifiers
// error handling

contract Ownable{
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner,"Only Owner can do this");
        _;
    }
    function setOwner(address newOwner) onlyOwner external  {
        require(newOwner!=address(0), "Address should not be zero address");
        owner = newOwner;
    }
    function getOwner() public view returns (address){
        return owner;
    }
    function onlyOwnwerCalls() external onlyOwner{
        // code
    }

    function anyoneCalls() external{
        // code
    }

}
