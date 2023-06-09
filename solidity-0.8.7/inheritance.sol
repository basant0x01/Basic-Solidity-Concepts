// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{

      function func1() public pure returns (string memory) {
            return "This is MainContract";
      }
}

contract SecondContract{

      function func2() public pure returns (string memory) {
            return "This is SecondContract";
      }
}

contract ThirdContract is MainContract,SecondContract{

}


}

// Technique(2) - Passing dynamic value to the constructor in Multiple Inheritance concept.
contract ForthContract is MainContract,SecondContract{
       constructor(string memory _nameFromForthContract,uint _ageFromForthContract) MainContract(_nameFromForthContract,_ageFromForthContract){

     }
 }
