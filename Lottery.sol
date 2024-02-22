// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Lottery{

address public Manager;
address payable[] public participants;
uint public rand;
address payable public winner; 

constructor(){
        Manager = msg.sender;
}
modifier onlyManager(){
        require(msg.sender == Manager);
        _;
}
receive() external payable{
        require(msg.value >=1 ether);
        participants.push(payable(msg.sender));
 }
 function balanceOfcontract()public view onlyManager returns(uint){
       return address(this).balance;
 }



