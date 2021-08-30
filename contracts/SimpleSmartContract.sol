//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract SimpleSmartContract {
    string public name;

    constructor() public{
        name='my name';
    }

    function getName() public view returns (string memory){
        return (name);
    }

    function setName(string memory new_name) public {
        name = new_name;
    }
    }