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

  event ImageCreated (
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  //Create Images
  function uploadImage(string memory _imgHash, string memory _description) public {

    //Increment image id
    imageCount ++;

    //Add image to contract
    images[imageCount] = Image(imageCount, _imgHash, _description, 0, msg.sender);

    //Trigger and Event 
    emit ImageCreated(imageCount, _imgHash, _description, 0, msg.sender);
  }

  //Tip Images 
}