// SPDX-License-Identifier: MIT 
pragma solidity >=0.4.22 <0.9.0; 
contract ArrayRemoveByShifting {
    
event LogItemRemoved(uint256 index, uint256 removedValue);


    uint256 [] public arr;

    uint256 iValue;
    uint256 arri_befor;
    event Log(address indexed sender, uint256 message);


    //传入第几个元素
    function remove(uint256 index) public {

        //判断需要删除的元素，是否小于数组长度
        require(index <= arr.length,"out of array");

         uint256 indexValue = index;
         uint256 removedValue = arr[index];

        // 从第几个元素开始 
        for (uint256 i = index-1; i < arr.length-1; i++) 
        {

          iValue = i;
        //   arri_befor = arr[i];
           arr[i]= arr[i+1];
        }

        arr.pop();

        // 触发事件
       emit LogItemRemoved(index, removedValue);


    }

 function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(3);
        // [1, 2, 4, 5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        // arr = [1];
        // remove(0);
        // // []
        // assert(arr.length == 0);
    }


}
