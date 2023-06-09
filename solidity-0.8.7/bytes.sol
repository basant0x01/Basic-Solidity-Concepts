// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{
      // So we are learning about the fixed size bytes array.

      bytes4 public byt1; // Fixed Size 
      bytes3 public byte2; // Fixed Size
      bytes public dynamicbyte = "abcde"; // Dynamic Size

      function valueSetterInFixed() public {
            byt1 = "abcd"; // bytes4: 0x61,62,63,64
            byte2 = "123"; // bytes3: 0x31,32,33
      }


      function valueSetterInDynamic(string memory _newValue) public {
            bytes memory newDynamicByte = bytes(_newValue); // Type casting string -> bytes
            dynamicbyte.push(newDynamicByte[0]); // Push automatically set value at the last of index
            // so we are setting the index 0 bydefault
      }

      // OR

      function AutoValueSetter(string memory _newValue) public {
            bytes memory newDynamicBytes = bytes(_newValue);
            for ( uint i = 0; i < newDynamicBytes.length; i++){
                  dynamicbyte.push(newDynamicBytes[i]);
            }
      }



/*
      Notes:
      1. Fixed size byte array are immutable, we cannot change the Index
      2. Bytes output are always are in HEX form
*/ 

 }
