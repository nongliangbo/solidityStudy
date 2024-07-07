// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract IFElse {
    function foo(uint256 x) public pure returns (uint256){
        if (x<10){
            return 0;
        }else if (x<20){
            return 1;
        }else {
            return 2;
        }

    }

    function ternary(uint256 x) public pure returns (uint256){
        // if (x<10){
        //     return 1;
        // }
        // return 2

        return x<10?1:2;
    }
}