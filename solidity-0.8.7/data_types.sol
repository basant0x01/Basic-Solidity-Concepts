// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract DataTypes{
    
    // NORMAL DATATYPE
    // ----------------------------------
    string public name = "basant0x01";
    /*
    int can be positive and negetive both.
    int can be range from -2 ** 255 to 2 ** 255 -1
    int min value: int public var1 = type(int).min; [ int256: -57896044618658097711785492504343953926634992332820282019728792003956564819968 ]
    int max value: int public var2 = type(int).max; [ int256:  57896044618658097711785492504343953926634992332820282019728792003956564819967 ]
    */
    int public temprature = -12;
    /*
    uint means(unsigned integer), no negetive number
    uint8 = 2**8 - 1 (255) and uint16 = 2**16 -1 (65535)
    uint can be range from uint8 - uint256
    uint max value: uint public var1 = type(uint).max; [ uint256: 115792089237316195423570985008687907853269984665640564039457584007913129639935 ]
    */
    uint public age = 65; 
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bool public isOwner = true; //  default = false
    bytes2 public char = "ab"; // bytes5 public char = "abcde";
    // Output of bytes are always in Hex form
    
    // REFERENCE DATETYPE
    // ------------------------------------
    
    
}
