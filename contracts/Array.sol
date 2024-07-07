
// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0; 

contract Array {


    uint256[] public arr;

    uint256[] public arr2 = [1,2,3];

    //固定个数数组
    uint256[10] public  myFixedSizeArr;

    
    function get(uint256 i) public view  returns (uint256){
        return arr[i];
    }

    function getarr() public view returns (uint256[] memory){
        return  arr;
    }

        function examples() external pure {
        // create array in memory, only fixed size can be created
        uint256[] memory a = new uint256[](5);
    }


    function push(uint256 i) public {
        //追加一个元素
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

     function getLength() public view returns (uint256) {
        return arr.length;
    }

     function remove(uint256 index) public {
        delete arr[index];
    }

}