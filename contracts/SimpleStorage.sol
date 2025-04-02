// SPDX-License-Identifier: MIT
pragma solidity  0.8.19;


contract SimpleStorage {
    uint256 myFavoriteNumber;
    
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public myFriends; // [] dynamic array

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber)public {
        myFriends.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    

}