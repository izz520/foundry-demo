// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol"; // 引入foundry forge中的Script库
import {Counter} from "../src/Counter.sol"; // 引入要部署的Counter合约

// 部署脚本继承了Script合约
contract CounterScript is Script {
    Counter public counter;

    // 可选函数，在每个函数运行之前被调用
    function setUp() public {}

    // 部署合约时会调用run()函数
    function run() public {
        // 开始记录脚本中合约的调用和创建
        vm.startBroadcast();
        // 创建合约
        counter = new Counter();
        // 结束记录
        vm.stopBroadcast();
    }
}
