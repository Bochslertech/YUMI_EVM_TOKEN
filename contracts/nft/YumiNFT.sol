// SPDX-License-Identifier: MIT

/// @title Feet and Eyes Guys
/// @author Transient Labs

pragma solidity ^0.8.9;

import "./ERC721ACore.sol";

contract YumiNFT is ERC721ACore {
    bytes32 public provenanceHash;

    constructor(
        address _royaltyAddress,
        uint256 _royaltyPerc,
        address _admin,
        address _payout,
        uint256 _price,
        uint256 _supply,
        bytes32 _merkleRoot,
        bytes32 _provenanceHash
    )
        ERC721ACore(
            "Yumi NFT",
            "YM",
            _royaltyAddress,
            _royaltyPerc,
            _price,
            _supply,
            _merkleRoot,
            _admin,
            _payout
        )
    {
        provenanceHash = _provenanceHash;
    }

    /// @notice function to update the merkle root in order to implement a waitlist in addition to the regular allowlist
    /// @dev requires admin or owner
    /// @param _merkleRoot is the new merkle root
    function setMerkleRoot(bytes32 _merkleRoot) external adminOrOwner {
        allowlistMerkleRoot = _merkleRoot;
    }
}
