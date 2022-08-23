//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Counter {
    uint public count;

    constructor (){
        count=4;
    }

    // Function to get the current count external
    function getExt() external view returns (uint) {
        return count;
    }
    // Function to get the current count internal
    function getPub() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}

contract getData is Counter {
    function getValue() public view returns(uint){
        // return dec();
        uint countData1 = getPub(); 
        // uint countData2 = getExt(); 
        return countData1;
    } 
}
