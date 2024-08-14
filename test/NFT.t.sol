// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import {YASOLNFT} from "../src/NFT.sol";

contract NFTTest is Test {
    YASOLNFT public yasolNft;

    function setUp() public {
        yasolNft = new YASOLNFT("YASOLNFT", "YS");
    }

    function testMint() public {
        yasolNft.mint(msg.sender, 1);
        yasolNft.ownerOf(1);
        assertEq(yasolNft.ownerOf(1), msg.sender);
    }
}
