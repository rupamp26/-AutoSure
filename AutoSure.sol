// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AutoSure {
    address public owner;
    uint256 public premium = 0.01 ether;
    uint256 public payoutAmount = 0.05 ether;

    struct Policy {
        address user;
        string eventId;
        bool claimed;
    }

    mapping(address => Policy) public policies;
    mapping(string => bool) public triggeredEvents;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Users buy insurance for a specific event (e.g., flight, weather)
    function buyPolicy(string calldata eventId) external payable {
        require(msg.value == premium, "Incorrect premium amount");
        require(policies[msg.sender].user == address(0), "Policy already exists");

        policies[msg.sender] = Policy({
            user: msg.sender,
            eventId: eventId,
            claimed: false
        });
    }

    // Owner manually sets the event as triggered (simulating oracle data)
    function setEventTriggered(string calldata eventId) external onlyOwner {
        triggeredEvents[eventId] = true;
    }

    // Users claim payout if their event was triggered
    function claim() external {
        Policy storage policy = policies[msg.sender];
        require(policy.user == msg.sender, "No policy found");
        require(!policy.claimed, "Already claimed");
        require(triggeredEvents[policy.eventId], "Event not triggered");

        policy.claimed = true;
        payable(msg.sender).transfer(payoutAmount);
    }

    // Owner can fund the contract to cover payouts
    function fund() external payable onlyOwner {}

    // Owner can withdraw unused funds
    function withdraw(uint256 amount) external onlyOwner {
        payable(owner).transfer(amount);
    }
}
