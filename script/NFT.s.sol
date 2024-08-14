// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "forge-std/Script.sol";
import {YASOLNFT} from "../src/NFT.sol";

contract NFTScript is Script {
    YASOLNFT public yasolNft;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        yasolNft = new YASOLNFT("YASOLNFT", "YASOL");
        vm.stopBroadcast();
    }
}
