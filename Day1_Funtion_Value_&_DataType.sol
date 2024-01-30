// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract simpleStorage
{
    // Data Type - Boolena , unit, int ,address, bytes
    bool  hasfvnumber = true;
    uint256 fvnumber = 5;
    string fvnumbertext = "Five";
    address myaddress = 0x24E9EB8883b748Ba7068Dea285D698d15cd3A04E;
    bytes8 fv = "Cat";
    // How to Crate a function
    uint256 public  fvtest;
    function store(uint256 _test)public {
        fvtest =_test;
        fvtest =_test +1 ;

        // View and pure
        // View Fuction use for show value
        

    }
}

// Our Contrat Address : 0xd9145CCE52D386f254917e481eB44e9943F39138
