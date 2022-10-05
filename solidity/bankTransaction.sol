//SPDX-Licence-Identifier: MIT

pragma solidity >0.8.1;

contract BankTransaction{
    struct Transaction{
        string ID; //payment identifier
        address client;
        address payable recipient;
        uint amount;
        uint timestamp;
        string note;
        string hashed;// hash value of payment
    }

    Transaction[] public transactions;
    mapping (string=>Transaction) txs;

//Adding a new payment
    function addTransaction(address payable receiver, uint amount, string memory note) public {
        uint time = block.timestamp;
        transactions.push(
            Transaction({
                ID: "",
                client: msg.sender,
                recipient: receiver,
                amount: amount,
                timestamp: time,
                note: note,
                hashed: ""
            })
        );
        /* txs[generateID(_hash)] = Transaction(
            {
                ID: generateID(_hash),
                client: msg.sender,
                recipient: receiver,
                amount: amount,
                timestamp: time,
                note: note,
                hashed: _hash
            }
        ); */
    }
//Create hash from ID
    /* function createHash(address client, address receiver,uint amount, uint time) public pure returns (bytes memory){
        return keccak256(abi.encodePacked(string.concat(string(bytes(client)),string(receiver),string(amount),string(time))));
    } */
//Generate transaction ID from hash
    /* function generateID(bytes memory hashed) public pure returns (string memory){
        return string(hashed[2:10]);
    } */

//Getting information about the payment by it's identifier
    function getTransaction(string memory id) public view returns(Transaction memory){
        for (uint256 i = 0; i < transactions.length; i++) {
            if(keccak256(abi.encodePacked(transactions[i].ID))==keccak256(abi.encodePacked(id))){
                return transactions[i];
            }
        }
        return txs[id];
    }
//Getting all payments of a particular customer
    function getClientInfo(address client) public view returns(Transaction memory){
        for (uint256 i = 0; i < transactions.length; i++) {
            if(transactions[i].client==client){
                return transactions[i];
            }
        }
    }
}