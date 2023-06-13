// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract dataLocation{

    // These are the dataLocations storage, memory and calldata
    // Each location have different features in comparsion of integrity and gas consumption

    // data store in storage are automatically stored into the blockchain which is permanent storage
    // state variables are also store in blockchain, so declearing state variables and adding
    // storage keyword is similar in nature.

    // It's possible to declear memory and calldata inside the calldata also
    // it s possible to declear memory inside the memory but not possible to declear calldata inside it.

    //  1. Storage:

    // 	    a. Store state variables
    // 	    b. It is stored directly in the blockchain
    // 	    c. It cost more gas

    // 2. Memory:

    // 	    a. Store in local variable
    // 	    b. it can be the in fuction
    // 	    c. Stored in RAM
    // 	    d. Minimum amount of gas cost

    // 3. Calldata:

    // 	    a. Uses in function input
    // 	    b. calldata is similar to memory and we can use it inside the memory
    // 	    c. If we will take input in calldata we cant change it
    // 	    d. Low amout of gas cost
    
    uint[] public numbers = [1,2,3,4,5];

    function setStorage() public { // 32694 gas
        uint[] storage numberStorage = numbers;
        numberStorage[3] = 400;
    }

    // 13368 gas
    function setMemory() public view { // Why view? because it's only reading the copy of numbers array.
        uint[] memory numberStorage = numbers;
        numberStorage[3] = 400;
    }

    // 25549 gas
    function setCallData(uint[] calldata _nums) public {
        
    }
}
