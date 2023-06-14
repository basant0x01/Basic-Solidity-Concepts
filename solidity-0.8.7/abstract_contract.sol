// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

 // abstract is also similar to interface which is a list of function definitions without implementation.
 // but we have to define virtual and override on the function
 // variables can be decleared inside abstract contract

abstract contract testCalculator {
    uint public num = 1;
    function calc() external pure virtual returns (uint);
} 

contract main is testCalculator{
    function calc() external pure override returns (uint){
        uint var1 = 1;
        uint var2 = 3;
        return var1 + var2;
    }
}
