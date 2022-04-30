/**
  * practicing solidity smart contract writing.
  * author: syedashrafullah15@gmail.com
  */


// SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.7.3;

contract HelloWorld {

    //events
    //states
    //functions

    // event
    event messagechanged(string oldmsg, string newmsg);
 
    // sate
    string public message;

    constructor(string memory firstmessage){
        message = firstmessage;
    } 

    // functions
    function update(string memory newmessage) public{
        string memory oldmsg = message;
        message = newmessage; 

        emit messagechanged(oldmsg, newmessage);
    }
}