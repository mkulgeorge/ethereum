pragma solidity ^0.4.0;

contract mortal {
    address  owner;
    function mortal() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        if(owner == msg.sender){
            _;
        }else {
            throw;
        }
    }
    
    function kill() onlyOwner{
        suicide(owner);
    }
}