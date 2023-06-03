// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract ImmutableExample{

      uint public constant myAge = 23; 
      //variables with contant keyword, should always hardcode
      //and constant variables are cannot be used inside the constructor
      //but we can use immutable inside the constructor. Immutable and constant are similar in function
      //their values cannot but changed once deployed.
      //immutable accepts the dynamic and hardcoded values both

      uint public immutable age;
      address public immutable owner;

     constructor(uint _age){
           age = _age;
           owner = msg.sender;
     }

 }
