//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
 
    function sfStore(uint256 _simpleStorageindex,uint256 _favouriteNumber ) public{
        //There are two things we'll need when working with func from a contract
        //Address
        //ABI => Application Binary Interface
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageindex];
        simpleStorage.store(_favouriteNumber);
    }

    function sfGet(uint _simpleStorageindex) public view returns(uint256){
        return simpleStorageArray[_simpleStorageindex].retrieve();
    }
}