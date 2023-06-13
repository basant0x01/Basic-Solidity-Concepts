// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract cryptographicHashes{

    // There are 3 common inbuild cryptographic hashes in Solidity
        // 1. Keccak256, 2. Sha256 and 3. Ripemd160


        function Keccak256(uint _id, string memory _name) public pure returns(bytes32){
           bytes32 hash = keccak256(abi.encodePacked(_id,_name));
           return hash;

           // returning output in bytes32 hash: 0xad0963f2eae4e845f575bd35ce19a1d3d09406bfdeb62f09a7fba6da9db0de27
        }

        function Sha256(uint _id, string memory _name) public pure returns(bytes32){
            bytes32 hash = sha256(abi.encodePacked(_id,_name));
            return hash;

            // 0x3975aa35d88939c086ca72e5fc3928a2ff96a98a67b5f6bdd53ff250230e3628
        }

        function Ripemd160(uint _id, string memory _name) public pure returns(bytes32){
            bytes32 hash = ripemd160(abi.encodePacked(_id,_name));
            return hash;

            // 0x0765e757d8bdfb9d08ea55c0807e79568ce0b2fb000000000000000000000000
        }
}
