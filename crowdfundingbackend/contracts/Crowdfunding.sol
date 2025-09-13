// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Crowdfunding {
    struct Project {
        address payable creator;
        uint256 goal;
        uint256 deadline;
        uint256 fundsRaised;
        bool isFunded;
        mapping(address => uint256) contributions;
    }

    uint256 public projectCount;
    mapping(uint256 => Project) public projects;

    function createProject(uint256 _goal, uint256 _duration) external {
        require(_goal > 0, "Goal must be greater than zero");
        require(_duration > 0, "Duration must be positive");
        
        projectCount++;
        Project storage project = projects[projectCount];
        project.creator = payable(msg.sender);
        project.goal = _goal;
        project.deadline = block.timestamp + _duration;
    }

    function contribute(uint256 _projectId) external payable {
        Project storage project = projects[_projectId];
        require(block.timestamp < project.deadline, "Project funding period has ended");
        require(msg.value > 0, "Contribution must be greater than zero");
        
        project.fundsRaised += msg.value;
        project.contributions[msg.sender] += msg.value;
    }

    function withdrawFunds(uint256 _projectId) external {
        Project storage project = projects[_projectId];
        require(msg.sender == project.creator, "Only project creator can withdraw");
        require(block.timestamp >= project.deadline, "Cannot withdraw before deadline");
        require(project.fundsRaised >= project.goal, "Funding goal not reached");
        require(!project.isFunded, "Funds already withdrawn");
        
        project.isFunded = true;
        project.creator.transfer(project.fundsRaised);
    }
}
