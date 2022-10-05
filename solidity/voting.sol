//SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0 <0.9.0;

contract Ballot{
    struct Voter{
        uint weight;
        bool voted;
        address delegate;
        uint vote;
    }

    struct Proposal{
        string name;
        uint voteCount;
    }

    address public chaiperson;

//declare a state variable that stores a Voter struct for each possible address
    mapping(address => Voter) public voters;

//A dynamically-sized array of Proposal structs
    Proposal[] public proposals;

//Create a ballot to choose one of proposalNames
    constructor(string[] memory proposalNames){
        // bytes32[] memory proposalNames = ["PIP","EIP","RIP"];
        chaiperson = msg.sender;
        voters[chaiperson].weight = 1;
        //For each provided proposal name, create a new proposal object and add it ti the end of the array
        for(uint8 i=0; i<proposalNames.length; i++){
            proposals.push(
                Proposal({//creates a temporary proposal object
                    name: proposalNames[i],
                    voteCount: 0
                })
            );
        }
    }

//Give voter the right to vote on this ballot. May only be called by chairpeerson
    function giveRightToVote(address voter) external{
        require(
            msg.sender == chaiperson, "Only chaiperson can give right to vote."
        );
        require(
            !voters[voter].voted, "The voter already voted"
        );
        require(voters[voter].weight == 0);
        voters[voter].weight = 1;
    }

//Function delegate your vote to the voter 'to'
    function delegate(address to) external{
        //assigns reference
        Voter storage sender = voters[msg.sender];
        require(sender.weight != 0, "You have no right to vote");
        require(!sender.voted, "You have already voted.");

        require(to != msg.sender, "Self-delegation is disallowed");
    }

//
    function vote(uint proposal) external{
        Voter storage sender = voters[msg.sender];
        require(sender.weight != 0, "Has no right to vote");
        require(!sender.voted, "Already voted");
        sender.voted = true;
        sender.vote = proposal;
        //if proposal is out of range of array, this will throw automatically and revert all changes
        proposals[proposal].voteCount += sender.weight; //TODO
    }
//Computes the winning proposal taking all previous votes into account.
    function winningProposal() public view returns(uint winningProposal_){
        uint winningVoteCount = 0;
        for(uint p = 0; p<proposals.length; p++){
            if(proposals[p].voteCount > winningVoteCount){
                winningVoteCount = proposals[p].voteCount;
                winningProposal_ = p;
            }
        }
    }

//
    function winnerName() external view returns(string memory winnerName_){
        winnerName_ = proposals[winningProposal()].name;
    }
}