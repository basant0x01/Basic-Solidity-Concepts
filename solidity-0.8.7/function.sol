// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract Function{
    // Here are the some examples of functions
    string public companyName = "D-Kompany";
    uint companyYear = 2001;

    // calculation
    function example1(uint _x) public pure returns(uint) {
        return _x + 12;
    }

    // setting new company name of state variabe from example2
    function example2(string memory _newCompanyName) public {
        companyName = _newCompanyName;
    }

    // Reading variable companyYear directly from the state and returning from function3
    function example3() public view returns (uint) {
        return companyYear;
    }

}
