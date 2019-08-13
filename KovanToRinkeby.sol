pragma solidity ^0.5.1;

contract KovanToRinkeby {
    
    //Contract Address: 0x94b4ba719ab4060be38a1c39b1562f61dee2386d

    event TransferToRinkeby(uint256 amount, address sender);
    
    function () external payable {
        msg.sender.transfer(msg.value);
        emit TransferToRinkeby(msg.value, msg.sender);
    }
        
}