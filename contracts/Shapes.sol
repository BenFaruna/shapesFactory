// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Shapes {
    uint256 public length;
    uint256 public breadth;

    function area() public view virtual returns (uint256);
    function perimeter() public view virtual returns (uint256);
}