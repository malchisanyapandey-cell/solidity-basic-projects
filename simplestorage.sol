// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Simplestorage{
    uint storeddata;

    //function set
    function set(uint x) public {
        storeddata=x;
    }
    //function get
    function get () public view returns (uint){
        return storeddata;
    }
}