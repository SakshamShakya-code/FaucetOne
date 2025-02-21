pragma solidity ^0.8.0;

contract TokenFaucet {
    mapping(address => bool) public hasClaimed;
    address public owner;
    uint256 public amount = 100 * 10**18; // Example amount, assuming 18 decimal places
    
    event TokensClaimed(address indexed recipient, uint256 amount);
    
    modifier onlyOnce() {
        require(!hasClaimed[msg.sender], "Already claimed");
        _;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
    
    constructor() {
        owner = msg.sender;
    }
    
    function claimTokens() external onlyOnce {
        hasClaimed[msg.sender] = true;
        payable(msg.sender).transfer(amount);
        emit TokensClaimed(msg.sender, amount);
    }
    
    function deposit() external payable onlyOwner {}
}
