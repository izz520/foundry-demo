// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    // 初始化测试用例
    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    // 基于初始化测试用例
    // 断言测试自增后的 counter 的 number 返回值 同等于 1
    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    // 基于初始化测试用例
    // 执行差异测试测试
    // forge 测试的过程中
    // 为 testSetNumber 函数参数传递不同的 unit256 类型的 x
    // 达到测试 counter 的 setNumber 函数 为不同的 x 设置不同的数
    // 断言 number() 的返回值等同于差异测试的 x 参数
    function testFuzz_SetNumber(uint256 x) public {
        console2.log("testNumber1: %s==============", x);
        console2.log("testNumber2: %s==============", x);
        emit log("test");
        console2.log("before:", block.timestamp);
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
