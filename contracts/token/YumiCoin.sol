pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YumiCoin is ERC20 {
    constructor(uint256 initialSupply) ERC20("CC", "CC") {
        _mint(msg.sender, initialSupply*10**18);
    }
}