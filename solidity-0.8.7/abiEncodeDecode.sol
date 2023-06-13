// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract abiEncodeDecode{

    // Difference between encode and encodePacked, 
        // encodePacked will compress the data and make output in compressed form.

    function abiEncode(uint _id, string memory _name) 
        public pure returns(bytes memory){           
           return abi.encode(_id,_name);

           // Input: 1,test

           // Output: 0x000000000000000000000000000000000000000000000000000000000000000
           // 1000000000000000000000000000000000000000000000000000000000000004000000000
           // 0000000000000000000000000000000000000000000000000000000474657374000000000
           // 00000000000000000000000000000000000000000000000
    }


      function abiEncodePacked(uint _id, string memory _name) 
        public pure returns(bytes memory){           
           return abi.encodePacked(_id,_name);

           // Input: 1,test

           // Output: 0x000000000000000000000000000000000000000000000000000000000000000174657374
    }

      function abiDecode(bytes memory _encodedHash) 
        public pure returns(uint _id, string memory _name){           
          (_id,_name) = abi.decode(_encodedHash,(uint,string));

           // input: 0x000000000000000000000000000000000000000000000000000000000000000100000000
           // 000000000000000000000000000000000000000000000000000000400000000000000000000000000
           // 000000000000000000000000000000000000004746573740000000000000000000000000000000000
           // 0000000000000000000000

           // Output: 
           /*
            0: uint256: _id 1
            1: string: _name test
           */
    }

}
