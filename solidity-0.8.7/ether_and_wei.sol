// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

// Transactions are paid with ether.
// Similar to how one dollar is equal to 100 cent, one ether is equal to 10 to the power 18 wei.

contract etherWei{
      uint public oneWei = 1 wei; 
      uint public oneEther = 1 ether; // 1e18 wei


      // 1 wei is equles to 1 : true
      bool public isOneWei = 1 wei == 1;
      // 1 ether is equles to 10**18(1e18) wei: true
      bool public isOneEther = 1 ether == 1e18;

}
