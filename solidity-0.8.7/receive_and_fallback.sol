// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Receive_and_Fallback{
    // Both receive() and fallback() functions has a similar functionalites
    // but fallback() can do more than just enabling smart contract to receive ether compare to
    // receive() function using "Low Level Interaction".
    // To receive ether both fallback and receive function should use as payable.

    // #FALLBACK
    // fallback() function will execute when non-existing function is called.
    // fallback() be can used to receive ether along with the data.
    // fallback() is only can be used as external visibility.

    fallback() external payable {

    }

    // #RECEIVE
    // receive() function only can be used to receive ether on the contract, it doesnot takes any data.

    receive() external payable {

    }

}
