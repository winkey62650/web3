// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;
    mapping (address => bool) public whilelistedAddresses;
    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whilelistedAddresses[msg.sender],"Sender has already been whitelisted");
        require(numAddressesWhitelisted < maxWhitelistedAddresses,"More address cant be added, limit reached");
        whilelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted +=1;
    }





}