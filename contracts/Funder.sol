// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Funder {
    uint public numFunders;

    mapping(uint => address) private funders;

    receive() external payable {}
    function transfer() external payable{
          funders[numFunders] = msg.sender;
    }
    function withdraw(uint withDrawAmount) external {
        require(withDrawAmount <= 2000000000000000000,"You cannot withDraw more than 2 ether");
        payable(msg.sender).transfer(withDrawAmount);
    }
}