// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleFileStorage {
    struct FileMeta {
        address owner;
        string cid;       // IPFS CID
        string filename;  // Friendly name
        uint256 timestamp;
    }

    uint256 public nextId;
    mapping(uint256 => FileMeta) public files;
    mapping(address => uint256[]) public ownerFiles;

    event FileRegistered(uint256 indexed id, address indexed owner, string cid, string filename);

    function registerFile(string calldata _cid, string calldata _filename) external returns (uint256) {
        uint256 id = nextId++;
        files[id] = FileMeta(msg.sender, _cid, _filename, block.timestamp);
        ownerFiles[msg.sender].push(id);
        emit FileRegistered(id, msg.sender, _cid, _filename);
        return id;
    }

    function getOwnerFiles(address _owner) external view returns (uint256[] memory) {
        return ownerFiles[_owner];
    }
}
