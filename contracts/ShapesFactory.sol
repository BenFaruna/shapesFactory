// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./Rectangle.sol";


contract ShapesFactory {
    event NewShapeCreated(address indexed creator, uint length, uint breadth);

    address public owner;

    Rectangle[] shapes;

    constructor() {
        owner = msg.sender;
    }

    function createShape(uint _length, uint _breadth) public {
        require(_length > 0, "cannot create shape with zero");
        require(_breadth > 0, "cannot create shape with zero");
        Rectangle newShape = new Rectangle(_length, _breadth);
        shapes.push(newShape);

        emit NewShapeCreated(msg.sender, _length, _breadth);
    }

    function getLastShapeAddress() public view returns (address) {
        require(shapes.length > 0, "No shape created");
        Rectangle lastShape = shapes[shapes.length - 1];

        return address(lastShape);
    }
}