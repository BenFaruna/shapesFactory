// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Shapes.sol";

contract Rectangle is Shapes {
    address owner;

    constructor(uint256 _length, uint256 _breadth) {
        length = _length;
        breadth = _breadth;
        owner = msg.sender;
    }

    function area() public view override returns (uint256) {
        return length * breadth;
    }

    function perimeter() public view override returns (uint256) {
        return 2 * (length + breadth);
    }

    function changeOwner(address _newOwner) public {
        require(msg.sender == owner, "Only owner can change the owner");
        owner = _newOwner;
    }
}