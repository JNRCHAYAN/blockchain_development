// this is where our code gose

// Find more information for what is pragma and how to use it https://docs.soliditylang.org/en/develop/layout-of-source-files.html

pragma solidity >=0.7.0 <0.9.0;

//creat a contract that can store data and return the data back

// be able to do following

// 1. recieve information 2. store information and 3. Return the information back

// a contract in the sense of solidity is a collection of the code (its function) and data (its state) that resides at a specific address on the ethereum block

contract SimpleStorage{
    //write all the cide inside here- function and its state
    
    // How to use variable in soildity

    // Variable : Variables are use to store information 

    // Type: Boolean- Keyword: bool - Value: true/false
    //interger keyword: uint - value - Signed and unsigned
    // String - keyword: string - data values that are made up of orders sequences of characters

    // uint StoreData =2;
     //string names = 'chayan' ;
     //bool switchON = true;
 

        // How to use function of soildity
        // set our data and one function build to get our data

        // public enables visibility so that we can call this outside of the contract itself
        // privite can not  enables visibility so that we can call this outside of the contract itself
        uint StoreData;
        function set(uint x) public
        {
`           StoreData = x;
        }

        function get () public view
        {
            return StoreData;
        }

}  