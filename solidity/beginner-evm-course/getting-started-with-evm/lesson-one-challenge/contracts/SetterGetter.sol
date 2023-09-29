// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SetterGetter {

    uint total;
    string name;
    bool confirm;
    uint add;

    function setTotal (uint _total) public returns (uint) {
        return total = _total;
    }

    function getTotal() public view returns (uint) {
        return total;
    }

    function setName (string memory _name) public returns (string memory) {
        return name = _name;
    }

    function getName () public view returns (string memory) {
        return name;
    }

    function setConfirm () public returns (bool) {
        if (total > 0) {
           return confirm = true;
        } else {
            return confirm = false;
        }
    }

    function getConfirm () public view returns (bool) {
        return confirm;
    }

    function setAdd (uint _a, uint _b) public returns (uint) {
        return add = _a + _b;
    }

    function getAdd () public view returns (uint) {
        return add;
    }
}
