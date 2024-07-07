
// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0; 

contract Variables {
    

    string public text = "Hello";
    uint256 public num = 123;

    function doSomethings() public view{
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
    }
}