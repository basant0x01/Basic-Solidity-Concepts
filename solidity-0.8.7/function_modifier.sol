// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract functionModifier{

   // function modifier allows owners to easly manage access controls using a single modfier
   // same modifier can be use at multiple functions. 

   string public ownerName = "Basant";
   address owner;

   constructor(){
      owner = msg.sender;
   }

   modifier onlyOwner(){ // function modifier
      require(msg.sender == owner);
      _;
   }

   function changeName(string memory _newName) public onlyOwner {
      ownerName = _newName;
   }
 
}
