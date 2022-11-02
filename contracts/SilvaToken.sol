// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
// WHAT VERSION SOLIDITY TO USE 
pragma solidity ^0.8.0;
// IMPORT WITH OPENZEPPLIN
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// create own token silva
contract SilvaToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("SilvaToken", "SLV") {
        // call the contract
        _mint(msg.sender, initialSupply);
    }
}
