// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract gasPriceAndSpent{
    // gas: is a unit of computation
    // gas spent: is the total amount of gas used in a transaction
    // gas price: is how much ether you are willing to pay per gas
    // gas limit: (max amount of gas you're willing to use for your transaction, set by you)
    // block gas limit: (max amount of gas allowed in a block, set by the network)

    // total gas cost = gas spent * gas price
    
   string name = "basant";

    // only getting value from the blockchain: 3409 gas (execuation cost)
   function getName() public view returns(string memory){
       return name;
   }

   // changing value stored on the blockchain: 6564 gas (execuation cost)
   function changeName(string memory _newName) public {
       name = _newName;
   }

    // preforming calculation: 359 gas (execuation cost)
   function calc() public pure returns(uint){
       return 12 + 12;
   }

}
