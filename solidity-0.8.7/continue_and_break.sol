// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract continueAndBreakExample{

   // break always breaks the continuity of infinite loops whereAs
   // continue always ignores/jumps 1 step from the loop.\

   uint public counter;

   function breakOnLoop() public {
      while(true){
         if(counter >= 10){
            break; // breaks the infinite loop
         }
         counter +=1;
      }
   }

   // Here the infinite loop is breaked, after counter reached to greater than or equles to 10;

   function continueOnLoop() public {
      for(uint i=0; i<10;i++){
         if(i == 8){
            continue;
         }
            counter += 1;
      }
   }

   // Here the total count should be 10 but using continue keyword, 1 steps will be jump and total count will be 9;
   // But if we remove the continue, the count will be 10;
  
}
