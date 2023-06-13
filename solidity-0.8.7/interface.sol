// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

 // interface is a list of function definitions without implementation
 // interface function have already defines a virtual keyword

interface testCalculator {
    function calc() external pure returns (uint);
} 

contract main is testCalculator{
    function calc() external pure returns (uint){
        uint var1 = 1;
        uint var2 = 3;
        return var1 + var2;
    }
}
