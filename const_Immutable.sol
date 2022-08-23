//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Const{
    //constant should be assigned in defined stage
    uint constant public counter=10;
    uint immutable public count1;
    constructor(){
        count1 = 10;
    }

}
