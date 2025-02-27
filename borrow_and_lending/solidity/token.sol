// Borrow and lending © 2025 by Miguel Valido is licensed under CC BY 4.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20 {
    constructor() ERC20("TestToken", "TTK") {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Mint 1,000,000 tokens to the deployer's address
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}
