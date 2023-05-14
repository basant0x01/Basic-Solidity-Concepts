// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract Variables{

    // It represents the address of the sender of the current message (transaction or call). 
    // It allows contracts to identify the account that initiated the transaction.
    function msgSender() public view returns (address) {
        address gVarMsgSender = msg.sender;
        return gVarMsgSender;
    }

    // It returns the current timestamp (Unix epoch time) of the most recent block in seconds
    function blockTimestamp() public view returns (uint) {
        uint gVarBlockTimestamp = block.timestamp;
        return gVarBlockTimestamp;
    }

    // It represents the current block number.
    function blockNumber() public view returns (uint){
        uint gVarBlockNumber = block.number;
        return gVarBlockNumber;
    }

    // It gives the difficulty of the current block
    function blockDifficulty() public view returns (uint){
        uint gVarBlockDifficulty = block.difficulty;
        return gVarBlockDifficulty;
    }

    // It provides the address of the miner who mined the current block
     function blockCoinbase() public view returns (address){
        address gVarBlockCoinbase = block.coinbase;
        return gVarBlockCoinbase;
    }


    // Others GlobalVariables
    /* 1. msg.value: It represents the number of wei (the smallest unit of Ether) sent along with the transaction or call. 
                     It allows contracts to access the amount of Ether transferred.

       2.  msg.data: It is a byte array containing the complete calldata (function arguments and data) of the current message
    */ 


}
