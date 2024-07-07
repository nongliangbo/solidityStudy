// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0; 


// increment and decrement the count store in this contract.

contract Counter {
    uint256 private    count;

//get
function get() public view returns (uint256){
    return  count;
}

//increment
//def is nonpayable
function inc() public {
    count+=1;
}

//decrement
function dec() public {
    count-=1;
}

}

