//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Reference{

    struct data{
        uint mfg;
        uint price;
    }

    mapping(uint => data) public Info;

    uint [] pid;

    function setInfo(uint _mfg, uint _price, uint _pid) public{
        Info[_pid] = data(_mfg, _price);
        // Info[_pid].mfg=_mfg;
        // Info[_pid].price=_price;
        pid.push(_pid);
    }

    function getInfo(uint _pid) public view returns(uint){
        return Info[_pid].mfg;
    }
}