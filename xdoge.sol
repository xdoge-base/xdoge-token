// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SimpleToken is ERC20 {

   uint8 private _tokendecimals;
   string private _name;
   string private _symbol;

   constructor(
       string memory name,
       string memory symbol,
       uint256 totalSupply_,
       uint8 _decimals
   ) ERC20(name, symbol){
       _tokendecimals = _decimals;
       _mint(msg.sender, totalSupply_);
   }

   function decimals() public view override returns (uint8) {
       return _tokendecimals;
   }

   function burn(uint256 value) public {
       _burn(msg.sender, value);
   }

}