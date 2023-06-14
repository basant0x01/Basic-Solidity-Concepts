// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

    // libraries are the pre-defined functions for easy useness.
    // libaries can't in inherit

library calcLibraries{
    function add() public pure returns(uint){
        return 10 + 20;
    }

        function sub() public pure returns(uint){
        return 10 - 5;
    }
}

contract mathaMatics {

    function addition() public pure returns(uint){
        uint output = calcLibraries.add();
        return output;
    }

        function substraction() public pure returns(uint){
        uint output = calcLibraries.sub();
        return output;
    }
}
