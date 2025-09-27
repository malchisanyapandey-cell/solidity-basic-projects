// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PiggyBank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Deposit Ether
    function deposit() public payable {}

    // Withdraw all Ether (only owner)
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }

    // Check balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}