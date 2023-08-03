// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageContract {
    string private message;

    event MessageSet(address indexed sender, string message);

    function setMessage(string memory _newMessage) external {
        message = _newMessage;
        emit MessageSet(msg.sender, _newMessage);
    }

    function getMessage() external view returns (string memory) {
        return message;
    }
}
