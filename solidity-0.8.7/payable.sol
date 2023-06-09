// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract payableExample{
   // Every time if we want to send / transfer or call money we have set receiver as payable.
   // Even if we want to receive balance in contract we have use payable in a function.

   address payable contractor = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

   function sendBalanceFromContractToUser() public {
      contractor.transfer(1 ether);
   }

   function receiveBalanceToContract() public payable {
      // after this function, contract is ready for receiving the balance.
   }
}
