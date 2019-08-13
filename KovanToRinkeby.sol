pragma solidity ^0.5.1;

contract KovanToRinkeby {
    
    
    event TransferToRinkeby(uint256 amount, address sender);
    
    function () external payable {
        msg.sender.transfer(msg.value);
        emit TransferToRinkeby(msg.value, msg.sender);
    }
        
}