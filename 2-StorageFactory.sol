//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

//inheritance 
contract StorageFactory is SimpleStorage {
    
    SimpleStorage[] public SSArray;

    function createSSC() public{
        SimpleStorage SS = new SimpleStorage();
        SSArray.push(SS);
    }

    function sfStore(uint256 ssIndex, uint256 ssNumber) public {
        //address, ABI
        SimpleStorage(address(SSArray[ssIndex])).store(ssNumber);
    }

    function sfGet(uint256 ssIndex) public view returns (uint256){
        return SimpleStorage(address(SSArray[ssIndex])).retrieve();
    }
}
