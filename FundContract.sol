// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract payablePra{
    function sendTo(address payable payee,uint amount) public payable returns (uint){
        require(address(this).balance>=amount,"Insufficent fund in contract");
        bool sent=payee.send(amount);
        require(sent,"Transfer successful");
        return address(this).balance;
    }
}
