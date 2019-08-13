pragma solidity ^0.5.1;

contract KovanToRinkeby {
    
    address payable owner;
    
    event TransferToRinkeby(uint256 amount, address owner);
    
    constructor () public {
        owner = msg.sender;
    }
    
    function () external payable {
        owner.transfer(msg.value);
        emit TransferToRinkeby(msg.value, owner);
    }
        
}