// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

 //deployed at 0x086170f79d76f155b8820e9beb667a3953fabe15

contract BasicNft is ERC721 {

uint256 private s_tokencounter;
mapping (uint256=>string) public s_tokenidtouri;

constructor() ERC721("NFTGASLESS","NFTG"){
s_tokencounter=0;
}

function mintnft(string memory tokenUri) public {
    s_tokenidtouri[s_tokencounter]=tokenUri;
    _safeMint(msg.sender,s_tokencounter);
    s_tokencounter++;


}

function tokenURI(uint256 tokenID) public view override returns(string memory){
    return s_tokenidtouri[tokenID];
}
}