// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ifElseExample{

   string  name;
   uint  age;
   uint myNagritaNumber;

   function registration(string memory _name,uint _age) public {
      name = _name;
      age = _age;
      myNagritaNumber = age + 10000000 + block.timestamp;
   }

   function getYourNagritaNo() public view returns(string memory,uint){
      if(age >= 16){
         return ("Congratulation!! Your Nagrita Number: ",myNagritaNumber);
      }else{
         return ("You are not illegible: ",0);
      }
   }

}
