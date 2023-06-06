// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract constantExample{

   // We can't change the value of constant once the contract deployed.
   // constant only allows hardcoded value
   // we can't use constant inside the constructor
   // variable should be in Uppercase while declearing constant [ Good Praticce Only ]

   address public constant OWNER = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}
