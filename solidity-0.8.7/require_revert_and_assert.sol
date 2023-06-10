// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract require_revert_assert{

   // All require, revert and assert are usefull for access control managements. But all have little
   // different purposes

   // 1. require() specially usefull for access controls.
   // 2. revert() can be usefull for if else conditions.
   // 3. assert() is usefull for identification of bug in the conditionss. And help us to identifies
      // the changes in accidently.

   address owner;
   string public companyName = "Basant Company";
   uint public companyBalance = 1000;

   constructor(){
    owner = msg.sender; // Contract deployer / Contract owner
   }

   function changeCompanyName(string memory _newCompanyName) public {
      // require(msg.sender == owner,"You are not authorized"); // require example
      // -------------------------------------------------------------------------
      // if(msg.sender != owner){  // revert example
      //    revert("You are not authorized");
      // }
      // -------------------------------------------------------------------------
      companyName = _newCompanyName;
   }

   function checkBal() public view {
      // We know that the balance should not changed for this contract, So in case if we accidently changed
      // then the condition help us to identify the bug.
         assert(companyBalance == 1000);
   }

   // Once if we accidently change the balance, then if we check bal, the transacted balance will be reverted.
   // because the asserted amount is equles to 1000.
   function changeBal() public {
      companyBalance +=1;
   }
 
}
