// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VerifySkipExample {
    uint public counter; // Tracks the number of increments
    uint[] public incrementedValues; // Logs only the values where `counter` was incremented

    function continueOnLoop() public {
        for (uint i = 0; i < 10; i++) {
            if (i == 8) {
                // Skip the rest of the loop when i == 8
                continue;
            }
            counter += 1; // Increment counter
            incrementedValues.push(i); // Log the value of `i` when increment happens
        }
    }

    // Reset the state for testing multiple times
    function reset() public {
        counter = 0; // Reset the counter
        delete incrementedValues; // Clear the increment log
    }

    // Get the logged values for verification
    function getIncrementedValues() public view returns (uint[] memory) {
        return incrementedValues;
    }
}
