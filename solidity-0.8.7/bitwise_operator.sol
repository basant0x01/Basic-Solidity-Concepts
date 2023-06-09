// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

      // There are total 
      // 1. AND: &
      // 2. OR: |
      // 3. XOR: ^
      // 4. NOT: ~
      // 5. SHIFTLEFT: <<
      // 6. SHIFTRIGHT: >>

      // Total bits: 128,64,32,16,8,4,2,1

contract bitWiseOperators{

   function AND(uint _x, uint _y) public pure returns(uint){
      return _x & _y;

   // AND Gate Operator: 1 AND 1 is always 1, others are always 0

   /*
      18: 16,8,4,2,1 = 10010
      20: 16,8,4,2,1 = 10100
                     --------
                       10000 = 16 ANS
   ____________________________________

      9: 8,4,2,1 = 1001
      7: 8,4,2,1 = 0111
                  ------
                   0001 = 1 ANS
   */

   }

   function OR(uint _x, uint _y) public pure returns(uint){
      return _x | _y;

   // OR Gate Operator: Any of 1 always represents 1, other are always 0.

   /*
      8: 8,4,2,1 = 1000
      5: 8,4,2,1 = 0101
                  ------
                   1101 = 13 ANS
      _________________________________

      20: 16,8,4,2,1 = 10100
      25: 16,8,4,2,1 = 11001
                     --------
                       11101 = 29 ANS
   */

   }

   function XOR(uint _x, uint _y) public pure returns(uint){
      return _x ^ _y;

   // XOR Gate Operator: 0 0 AND 1 1 are always 0, other are always 1

   /*

      20: 16,8,4,2,1 = 10100
      25: 16,8,4,2,1 = 11001
                     --------
                       01101 = 13 ANS

      6: 8,4,2,1 = 0110
      8: 8,4,2,1 = 1000
                  ------
                   1110 = 14 ANS

   */

   }

   function NOT(uint8 _x) public pure returns(uint){
      return ~_x;

      // NOT Gate Operator: Every Bits Flips 0 -> 1, 1 -> 0

      /*

         12: 128,64,32,16,8,4,2,1 = 00001100
                                  -----------
                                    11110011 = 243 ANS
      */
   }


   function SHIFTLEFT(uint _x, uint _shiftLeft) public pure returns(uint){
     return _x << _shiftLeft;

     // SHIFTLEFT Operator: Shifting bits to the left side

      /*

      1 << 1 shift: 0001 = 0010 = 1 ANS
      1 << 3 shift: 0001 = 1000 = 8 ANS
      3 << 2 shift: 0011 = 1100 = 12 ANS
      3 << 3 shift: 00011 = 11000 = 24 ANS
      6 << 3 shift: 000110 = 110000 = 48 ANS

      */

   }

   function SHIFTRIGHT(uint _x, uint _shiftRight) public pure returns(uint){
      return _x >> _shiftRight;

      // SHIFTRIGHT Operator: Shifting bits to the right side

      /*

         4 >> 1: 0100 = 0010 = 2 ANS
         4 >> 3: 0100 = 0001 = 0 ANS
         4 >> 2: 0100 = 0001 = 1 ANS
         8 >> 2: 1000 = 0010 = 2 ANS

      */

   }

}
