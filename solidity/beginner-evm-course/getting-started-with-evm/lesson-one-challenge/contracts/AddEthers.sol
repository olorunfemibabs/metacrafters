// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract AddEthers {

    //Lesson Two

    mapping (address => uint) public balance;

    function deposit () external payable {
        balance[msg.sender] += msg.value;
    }

    function valuewei () public view returns(uint) {
        return balance[msg.sender];
    }

    function valueether () public view returns (uint) {
        return balance[msg.sender]/1 ether;
    }

    function valuegwei () public view returns (uint) {
        return balance[msg.sender]/1 gwei;
    }

}