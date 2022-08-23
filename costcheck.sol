//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract A{
    uint8 public count8;
    constructor (){
        count8=3;
    }
}

contract B {
    uint256 public count256;
    constructor () {
        count256=8;
    }
}