// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
// WHAT VERSION SOLIDITY TO USE 
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";


contract SilvaToken is ERC20Capped {

    address payable public owner;
    constructor(uint256 cap) ERC20("SilvaToken", "SLV") ERC20Capped(cap * (10 ** decimals())) {
         owner = payable(msg.sender);
        _mint(owner, 70000000 * (10 ** decimals()));
    }
}
 