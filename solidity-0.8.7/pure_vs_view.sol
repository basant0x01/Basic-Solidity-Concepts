// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract View_Pure{
    /*
    1. [View]: View functions can be declear while we are only reading the State Variables, View is readOnly
    2. [Pure]: Pure functions can be declear while we are not interacting with the State Variables, Pure is
    neither Read neither Write. 
    3. [None]: While changing the value of State Variable, we have to declear the function without pure and view.
    */
    uint public age = 20;
    string public companyName = "Carki Krypto";

    // Here we are interacting with the State Variable age and reading the value from it.
    // While reading we have to declear view function
    function ViewExample() public view returns (uint){
        return age;
    }

    // Here are not interaction with any State Variables and returning all from locally.
    // If you are not reading/writing from state variable, then you must use pure function.
    function PureExample(uint _var1) public pure returns (uint){
        return _var1 + 12;
    }

    // Here we are changing the value of State variables, that's why we are declearing functions 
    // without view or pure.
    function changeCompanyName(string memory _newComanyname) public {
        companyName = _newComanyname;
    }
}
