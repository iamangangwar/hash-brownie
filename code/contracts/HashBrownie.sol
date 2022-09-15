pragma solidity ^0.6.0;

import "OpenZeppelin/openzeppelin-contracts@3.0.0/contracts/token/ERC20/ERC20.sol";

contract HashBrownie is ERC20 {
    constructor() public ERC20("HashBrownie", "HaB") {
    }

    function _mintMinerReward() internal {
        _mint(block.coinbase, 5);
    }

    function _beforeTokenTransfer(address from, address to, uint256 value) internal virtual override {
        _mintMinerReward();
        super._beforeTokenTransfer(from, to, value);
    }
}
