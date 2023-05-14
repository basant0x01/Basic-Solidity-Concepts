// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract Variables{
string public stateVar = "We are state variables";

function localVariableforStrings() public pure returns (string memory){
// Variables that are inside of functions are known as local variables
// Also local variables are not directly diployed on the blockchain, it's only usable after calling the function
    string memory localVar = "We are local variables";
    return localVar;
}

function localVariableforUint() public pure returns (uint){
    uint class = 8;
    return class;
}

}
