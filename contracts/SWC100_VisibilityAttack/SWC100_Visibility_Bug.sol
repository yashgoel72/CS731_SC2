pragma solidity ^0.4.0;

contract Visibility_victim{
    uint256 public balance;
    constructor() public{
        balance = 0;
    }
    function addBalance( uint256 _addBalance){// this function should have been private but by default it is public
        balance += _addBalance;
    }

    function deposit(uint256 _depositBalance) public {
        addBalance(_depositBalance);
    }
} 