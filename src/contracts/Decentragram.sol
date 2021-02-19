// SPDX-License-Identifier: MIT
 
pragma solidity ^0.7.4;

contract Decentragram {
  string public name = "Decentragram"; 

  //Store Images

  uint public imageCount = 0;
  mapping(uint => Image) public images;

  struct Image {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }

  //Create Images

  
  
  function uploadImage(string memory _imgHash, string memory _description) public {

    //Increment image id
    imageCount = imageCount ++;

    //Add image ton contract
    images[1] = Image(imageCount, _imgHash, _description, 0, msg.sender);
  }

  //Tip Images 
}