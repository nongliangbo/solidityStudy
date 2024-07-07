// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0; 

contract SimpleStorage {
    
    uint storedData;
    
    function set(uint x) public {
        storedData += x;    // 错误的，多加了一个加号
    }


      function get() public view  returns (uint) {
        return storedData;
    }
}
