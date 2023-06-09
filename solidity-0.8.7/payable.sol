// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract payableExample{
     /*
      0. Example of transfer, send and call
      1. Receive ether to contract
      2. Send ether from contract to User
     */

      bool public etherReceived;
      address payable manager = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

      //To receive balance in contract
     function receiveEtherToContract() public payable {
           etherReceived=true;
     }

      //To transfer balancec from contract to user 
      function transferEtherToUser() public {
            manager.transfer(1 ether);
      }

      //Always use bool and require to send any balances
      function sendEtherToUser() public {
            bool successfullySend = manager.send(1 ether); // 1000000000000000000 in wei
            require(successfullySend,"Ether sending failed");
      }

      //To send ether using call
      function sendEhterToUserUsingCall() public {
            (bool successfullySend,) = manager.call{value:1 ether}("");
            require(successfullySend,"failed to send ether");
      }

      //To check current contract balance
     function checkContractEther() public view returns (uint){
           return address(this).balance;
     }

 }
