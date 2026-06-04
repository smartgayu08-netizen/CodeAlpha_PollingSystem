// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PollingSystem {

    struct Candidate {
        string name;
        uint voteCount;
    }

    Candidate[] public candidates;

    constructor() {
        candidates.push(Candidate("Alice", 0));
        candidates.push(Candidate("Bob", 0));
    }

    function vote(uint candidateIndex) public {
        candidates[candidateIndex].voteCount++;
    }
}