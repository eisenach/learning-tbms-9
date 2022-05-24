// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TBMS9Erc20 is ERC20 {

    address owner;

    constructor() ERC20("TBMS9 Token", "TBMS9") {
        owner = msg.sender;
        _mint(owner, 1000 * (10 ** decimals()));
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address sender = _msgSender();
        uint256 lessAmount = amount / 100;
        uint256 myFee = amount - lessAmount;

        _transfer(sender, to, lessAmount);
        _burn(sender, myFee);
        return true;
    }
}
