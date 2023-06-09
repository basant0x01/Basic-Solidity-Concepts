// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract loopsExample{

   uint public forLoopCounter;
   uint public whileLoopCounter;
   uint public doWhileLoopCounter;
   uint[] public basicCounter = [1,2,3,4,5,6,7,8,9,10];

   function forLoop() public {
      for(uint i=0;i<10;i++){
         forLoopCounter += 1;
      }
   }

   function whileLoop() public {
      while(forLoopCounter>=9){
         whileLoopCounter = whileLoopCounter + 1;
         if(whileLoopCounter>=20){
            break;
         }
      }
   }

   function doWhileLoop() public {
      do{
         forLoopCounter -= 1;
         whileLoopCounter -= 1;
         doWhileLoopCounter += 1;
      }while(whileLoopCounter>=20);

   }

   function forLoopWithArray() public {
      for(uint i=0; i < basicCounter.length; i++){
         if(basicCounter.length >= 9){
            basicCounter.push(11);
            break;
         }
      }
   }
   
}
