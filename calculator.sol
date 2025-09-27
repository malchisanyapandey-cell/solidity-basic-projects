// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    int256 private result;

    // Get the current result
    function getResult() public view returns (int256) {
        return result;
    }

    // Add two numbers
    function add(int256 a, int256 b) public returns (int256) {
        result = a + b;
        return result;
    }

    // Subtract two numbers
    function subtract(int256 a, int256 b) public returns (int256) {
        result = a - b;
        return result;
    }

    // Multiply two numbers
    function multiply(int256 a, int256 b) public returns (int256) {
        result = a * b;
        return result;
    }

    // Divide two numbers
    function divide(int256 a, int256 b) public returns (int256) {
        require(b != 0, "Cannot divide by zero");
        result = a / b;
        return result;
    }

    // Reset result to 0
    function reset() public {
        result = 0;
    }
}
