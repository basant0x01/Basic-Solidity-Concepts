// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract constructorExample{

   address public owner;
   uint public balance;

   // Constructor is always initilized at the beginning of the deployment.
   // Constructor can be initilized both dynamically and statically

   constructor(address _contractOwner){
      balance=1000; // Default balance
      owner = _contractOwner;
   }

   function changeBalance() public {
      balance = balance + 23;
   }
}
