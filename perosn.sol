//SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Person{

    struct personInfo{
        string  name;
        uint256 contact;
    }

    address[] public addresses;

    mapping(address => personInfo) public mappedData;

    function setPerson(string memory _name, uint _contact) public {
        mappedData[msg.sender] = personInfo(_name,_contact);
        addresses.push(msg.sender);
    }

    function getPerson() public view returns(address [] memory, personInfo[] memory){

        //array to store address
        address[] memory mAddress = new address[](addresses.length);

        //struct personInfo array to store personInfo data
        personInfo[] memory mInfo = new personInfo[](addresses.length);

        for(uint i=0; i<addresses.length; i++){
            
            mAddress[i] = addresses[i];
            mInfo[i] = mappedData[addresses[i]];
        }

        //returning in the form of tuple
        return(mAddress,mInfo);
    }
}