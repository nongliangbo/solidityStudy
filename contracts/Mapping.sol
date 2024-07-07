// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mapping {
    

    mapping (address => uint256) public  mymap;

    function get(address _addr) public view  returns(uint256){
        return  mymap[_addr];
    }

        function set(address _addr, uint256 _i) public {
        // Update the value at this address
        mymap[_addr] = _i;
    }


    function remove(address _addr) public {
        // Reset the value to the default value.
        delete mymap[_addr];
    }
}
contract NestedMapping {
    
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr1,uint256 _i)public view returns (bool){
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint256 _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }
    function remove(address _addr1, uint256 _i) public {
        delete nested[_addr1][_i];
    }

}