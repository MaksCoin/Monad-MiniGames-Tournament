// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Tournament {
    struct Player {
        uint256 totalScore;
        mapping(string => uint256) bestScores;
    }

    mapping(address => Player) public players;
    address[] public playerList;

    uint256 public prizePool;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function joinTournament() external payable {
        require(msg.value == 1 ether, "1 MON required"); // замените 1 ether на 1 MON
        prizePool += msg.value;
        if(players[msg.sender].totalScore == 0){
            playerList.push(msg.sender);
        }
    }

    function submitScore(string calldata gameId, uint256 score) external {
        if(score > players[msg.sender].bestScores[gameId]){
            players[msg.sender].totalScore += score - players[msg.sender].bestScores[gameId];
            players[msg.sender].bestScores[gameId] = score;
        }
    }

    function getLeaderboard() external view returns(address[] memory, uint256[] memory){
        uint256[] memory scores = new uint256[](playerList.length);
        for(uint256 i=0; i<playerList.length; i++){
            scores[i] = players[playerList[i]].totalScore;
        }
        return (playerList, scores);
    }

    function withdraw(address payable winner, uint256 amount) external {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= prizePool, "Not enough funds");
        prizePool -= amount;
        winner.transfer(amount);
    }

    function resetTournament() external {
        require(msg.sender == owner, "Only owner can reset");
        for(uint i=0; i<playerList.length; i++){
            delete players[playerList[i]];
        }
        delete playerList;
        prizePool = 0;
    }
}
