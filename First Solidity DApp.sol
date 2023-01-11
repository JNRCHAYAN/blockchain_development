pragma solidity ^0.5.7;

contract wll
{
    address owner;
    uint fortune;
    bool deceased;

    constructor() payable public
    {
        owner = msg.sender; //msg sender represents address that is bing called
        fortune = msg.value; // msg value tell use how mucj ether is beign sent
        deceased = false;

    }

    // create a modifier so the only person who call the cotract is the owner

        modifier onlyOwner
        {
            require(msg.sender == owner);
            _;
        }

    // create a modifier so that we only allocate funds if friend's group deceased

        modifier mustBeDeceased
        {
            require(deceased = true);
            _;
        }
        // list of family wallets
        address payable[] familyWallets;
        mapping(address => uint) inheritance;

        // set a inheritance for each address

        function setInheritance(address payable wallet, uint amount) public

        {
                familyWallets.push(wallet);
                inheritance[wallet] =  amount;

        }

        //pay each family member based on their wallet address

        function payout() private mustBeDeceased
        {
            for (uint i=0;i<familyWallets.length; i++)
            {
                familyWallets[i].transfer(inheritance[familyWallets[i]]);
                //transfering the funds from contract address to reciever address
            }

        }

        // oracle switch simulation

        function hasdeceased() public onlyOwner
        {
            deceased = true;
            payout();
        }


}

