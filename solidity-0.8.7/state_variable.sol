// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

// To write or update a state variable you need to send a transaction.
// On the other hand, you can read state variables, for free, without any transaction fee

contract stateVariable{

// Variables that are outside of functions but inside of contract are known as the state variables
// Also state variables are directly deployed on the blockchain
string public stateVar = "We are Auditors";
uint public ourGf = 0;
int public temp;

function setter(int _temp) public {
    temp = _temp;
  }
  
function reader() public view returns(int){
    return temp;  
  }

}
