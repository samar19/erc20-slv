// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
// WHAT VERSION SOLIDITY TO USE 
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SilvaToken is ERC20 {

    address payable public owner;
    constructor() ERC20("SilvaToken", "SLV") {
         owner = payable(msg.sender);
        _mint(owner, 70000000 * (10 ** decimals()));
    }
}
