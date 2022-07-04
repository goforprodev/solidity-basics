//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

//Using inheritance in solidity
contract ExtraStorage is SimpleStorage{
    // we want to create a function that gets a favourite number and adds 5 to it
    // this can only be fuffiled using an oop concept called override
    function store(uint256 _favouriteNumber) public override{
        favouriteNumber = _favouriteNumber + 5;
    }

    id = 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

}