// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{

      string[] public cars; // dynamic-Size array
      uint[5] public nums = [10,20,30,40,50]; // fixed-Size array

      function setArrayInCars(string memory _newCars) public {
            // This function will push every value in index in order way[0,1,2,3..].
            cars.push(_newCars);
      }

      function popArray() public {
            // This function .pop will delete last index from the array. And This not works in Fixed array
            cars.pop();
      }

      function lengthOfArray() public view returns(uint) {
            // This will findout the total length of arrays
           return nums.length;
      }

      function deleteArray(uint _deleteIndex)public {
            // This will delete the array value according to the index number.
            delete nums[_deleteIndex];
      }

 }
