// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Exception {
    uint256 public value;

    // Function to set a new value, but only if the new value is greater than the current value
    function setValue(uint256 newValue) public {
        // Use require() to validate the condition
        require(newValue > value, "New value must be greater than the current value.");

        value = newValue;
    }

    // Function to get the square of a number, but only if the number is positive
    function getSquare(uint256 number) public pure returns (uint256) {
        // Use assert() to check an invariant condition (a condition that should never be false)
        assert(number >= 0);

        return number * number;
    }

    // Function that may trigger the revert error handler
    function triggerRevert(bool shouldRevert) public pure {
        if (shouldRevert) {
            // Use revert() to explicitly revert the transaction with a custom error message
            revert("This transaction was intentionally reverted.");
        }
    }
}
