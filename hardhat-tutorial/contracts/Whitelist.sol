// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract Whitelist{
  // Max number of whitelisted addresses allowed
    uint8 public maxWhitelistAddreses;

//Keep track of number of addresses whitelisted till now. 
    uint8 public numAddressesWhiteListed;

    mapping(address => bool) public whitelistAddresses;

   constructor(uint8 _maxWhitelistAddreses){
    maxWhitelistAddreses = _maxWhitelistAddreses;
   }
  function  addAddressToWhitelist() public {
    require(!whitelistAddresses[msg.sender],"Sender is already in the whitelist");
    require(numAddressesWhiteListed < maxWhitelistAddreses,"Max limit reached");
    whitelistAddresses[msg.sender] = true;
    numAddressesWhiteListed += 1;
  }

}