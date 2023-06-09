// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract tranaryOperator{

   // We can write if else condition in shortest form using tranary operator
   // this can save gas cost


   // using normal if else
   function ageCalc1(uint _age) public pure returns(string memory){
      if(_age > 18){
         return "i'm an adult";
      }else{
         return "i'm a island boy";
      }
   }


   // Using tranary operator
   function ageCalc(uint _age) public pure returns(string memory) {
     return _age > 18 ? "i'm an adult":"i'm a island boy";
   }

  
}
