// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Growpad {
    
    address public owner;
    mapping(address => uint256) public contributions;
    uint256 public totalContributions = 0;

    event Contributed(address indexed contributor, uint256 amount);
    event Withdrew(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action.");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function contribute() external payable {
        require(msg.value > 0, " send some Ether.");
        
        contributions[msg.sender] += msg.value;
        totalContributions += msg.value;

        emit Contributed(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) external onlyOwner {
        require(amount <= address(this).balance, "Not enough funds.");

        payable(owner).transfer(amount);

        emit Withdrew(owner, amount);
    }

    function getContributionOf(address contributor) external view returns (uint256) {
        return contributions[contributor];
    }

    function getTotalContributions() external view returns (uint256) {
        return totalContributions;
    }
}
