// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TBMS9NFT is ERC721 {

  mapping( uint256 => string ) uris;

  constructor() ERC721("TBMS9 Collection", "TBMS9") {
  }


  function mint(address to, uint256 tokenId, string memory uri) public {
    _safeMint(to, tokenId);
    uris[tokenId] = uri;
  }

  function burn(uint256 tokenId) public {
    require( ownerOf(tokenId) == msg.sender, "You are not the owner" );
    _burn(tokenId);
  }

  function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return uris[tokenId];
  }

}
