//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;


//setter function cost for execution as well as transaction
//getter function cost for execution only

contract Gas{
    uint public i;

    function setter(uint a) public{
        i=a;
    }

    function loop() public {
        while(true){
            i++;
        }
    }
    
    function getter() public view returns(uint){
        return i;
    }
}