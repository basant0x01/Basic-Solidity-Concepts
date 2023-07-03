// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

    // DelegateCall is a low-level Solidity opcode that allows a contract to execute code from another contract,
    // but it using the state and the storage of the calling contract

contract old_v0_12_CynicalContract{

    string public companyName = "Karki_&_Karki's_Corp";

    function changeCompanyName(string memory _newName) public {
        companyName = _newName;
    }

}

contract new_v0_13_CynicalContract{

    string companyName;

    // call method will use the storage of called(who is going to be called) contract
    // but delegatecall will use the storage of caller contract

    function changeCompanyName(address _oldContract, string memory _companyName) external {
       (bool success, ) = _oldContract.delegatecall(abi.encodeWithSignature("changeCompanyName(string)", _companyName));
    // (bool success, ) = _oldContract.call(abi.encodeWithSignature("changeCompanyName(string)", _companyName));
        require(success,"Upgradation failed");
    }

}