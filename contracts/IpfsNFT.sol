// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract AccessNFT is ERC721 {
    uint256 public mintPrice;
    uint256 public totalSupply;
    uint256 public maxSupply;
    bool public isMintEnabled;
    address payable public withdrawWallet;

    mapping(address => uint256) public walletMints;

    constructor() payable ERC721("Access NFT", "ACS") {
        mintPrice = 0.05 ether;
        totalSupply = 0;
        maxSupply = 300;
        isMintEnabled = false;
        withdrawWallet = payable(msg.sender);
    }
}
