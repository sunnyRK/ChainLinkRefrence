pragma solidity ^0.6.7;

import "./AggregatorInterface.sol";
import "./Ownable.sol";

contract ChainLinkPriceFeed is  Ownable{

    mapping(string => address) public chainlinkTokenMapping;
  
    function setToken(string memory tokenSymbol, address tokenAddress) public onlyOwner {
        chainlinkTokenMapping[tokenSymbol] = tokenAddress;
    }
  
    /**
     * Returns the latest price
     */
    function getLatestPrice(string memory tokenSymbol) public view returns (int256) {
        return AggregatorInterface(chainlinkTokenMapping[tokenSymbol]).latestAnswer();
    }

    /**
     * Returns the timestamp of the latest price update
     */
    function getLatestPriceTimestamp(string memory tokenSymbol) public view returns (uint256) {
        return AggregatorInterface(chainlinkTokenMapping[tokenSymbol]).latestTimestamp();
    }
}