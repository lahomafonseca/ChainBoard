// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MessageBoard {
    struct Message {
        uint256 id;
        address author;
        uint256 timestamp;
        bytes32 ipfsHash;
        uint256 likeCount;
        uint256 dislikeCount;
        uint256 parentId; // 0 for root message
    }

    event MessagePosted(uint256 indexed id, address indexed author, bytes32 ipfsHash, uint256 parentId);
    event MessageLiked(uint256 indexed id, address indexed liker, bool isLike);

    uint256 public nextId = 1;
    mapping(uint256 => Message) public messages;
    mapping(uint256 => mapping(address => bool)) public liked; // prevents duplicate like/dislike

    function postMessage(bytes32 ipfsHash) external returns (uint256) {
        require(ipfsHash != bytes32(0), "Empty ipfsHash");
        require(ipfsHash != bytes32(0), "Empty ipfsHash");
        require(ipfsHash != bytes32(0), "Empty ipfsHash");
        require(ipfsHash != bytes32(0), "Empty ipfsHash");
        require(ipfsHash != bytes32(0), "Empty ipfsHash");
        require(ipfsHash != bytes32(0), "Empty ipfsHash");
        uint256 id = nextId++;
        messages[id] = Message({
            id: id,
            author: msg.sender,
            timestamp: block.timestamp,
            ipfsHash: ipfsHash,
            likeCount: 0,
            dislikeCount: 0,
            parentId: 0
        });
        emit MessagePosted(id, msg.sender, ipfsHash, 0);
        return id;
    }

    function replyMessage(uint256 parentId, bytes32 ipfsHash) external returns (uint256) {
        require(parentId > 0 && parentId < nextId, "Invalid parentId");
        uint256 id = nextId++;
        messages[id] = Message({
            id: id,
            author: msg.sender,
            timestamp: block.timestamp,
            ipfsHash: ipfsHash,
            likeCount: 0,
            dislikeCount: 0,
            parentId: parentId
        });
        emit MessagePosted(id, msg.sender, ipfsHash, parentId);
        return id;
    }

    function likeMessage(uint256 messageId, bool isLike) external {
        require(messageId > 0 && messageId < nextId, "Invalid messageId");
        require(!liked[messageId][msg.sender], "Already reacted");
        liked[messageId][msg.sender] = true;
        if (isLike) {
            messages[messageId].likeCount += 1;
        } else {
            messages[messageId].dislikeCount += 1;
        }
        emit MessageLiked(messageId, msg.sender, isLike);
    }

    function getMessage(uint256 id) external view returns (Message memory) {
        require(id > 0 && id < nextId, "Invalid id");
        return messages[id];
    }
}
