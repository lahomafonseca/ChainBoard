# Contract API

- postMessage(bytes32 ipfsHash) -> uint256 id
- replyMessage(uint256 parentId, bytes32 ipfsHash) -> uint256 id
- likeMessage(uint256 messageId, bool isLike)

Events:
- MessagePosted(id, author, ipfsHash, parentId)
- MessageLiked(id, liker, isLike)
Example: likeMessage(42, true) to like message 42
Example: likeMessage(42, true) to like message 42
Example: likeMessage(42, true) to like message 42
Example: likeMessage(42, true) to like message 42
Example: likeMessage(42, true) to like message 42
Example: likeMessage(42, true) to like message 42
Example: likeMessage(42, true) to like message 42
Example: likeMessage(42, true) to like message 42
