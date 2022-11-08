//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {

    //iniciando em zero
    uint256 fNumber;

    struct People{
        uint256 fNumber;
        string name;
    }

    People[] public people;
    mapping (string => uint256) public nameToFavNumber;

    function store(uint256 sNumber) public {
        fNumber = sNumber; 
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return fNumber;
    }

    //memory, storage
    function addPerson(string memory _name, uint256 sNumber) public {
        people.push(People(sNumber,_name));
        nameToFavNumber[_name] = sNumber;
    }
}
