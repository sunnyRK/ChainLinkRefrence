# Automated crypto trade By Chainlink decentralized oracles and Uniswap-V2 protocol

AutoTrade used Chainlink Oracles and Uniswap-V2 to set up a trustless automated crypto trading platform without requiring the user to pass minimum return value for safety.

Uniswap works on ERC20-ERC20 pair. So, If you want to trade you need to pass minimum return value for safety, deadline and Path of the token. AutoTrade removes these all hurdles.

Platform calculates the reserve price of pair in uniswap and calculates the chainlink oracle price for token pair. And Calculates Slippage rate using these both price. If the Slippage rate satisfied the threshold then platform executes automate trade for trader otherwise it shows the error to perform trade.  
`note: Slippage refers to the difference between the expected price of a trade and the price at which the trade is executed.`

For e.g. From the platform Send 1 DAI to pair(e.g. DAI/LINK) and it will execute a single transaction DAI -> LINK swap for you if the slippage rate <=2%(thresold) between liquidity reserve of uniswap and DAI/KNC price feed from chainlink oracle.

Even using platform, Liquidity providers can manage pools like they can deposit or sell liquidity to earn interests. But while add liquidity for token pair whatever value you add for one token so parallelly it calculates same price of second token from chainlink oracle. So platform will maintain or balance liquidity using chainlink price feeds.
 
Platform also saves trade transaction history and provides all transaction details in a single place in platform.

## How was it made?

I have used Chainlink Oracles and Uniswap-V2 protocol to build automated trading platform. AutoTrade is supporting a trading crypto pair using Uniswap smart contract and for fetch latest price feed from chainlink oracles. So, Using platform liquidity providers can add and remove liquidity and traders can perform trade using smart contract. 

Platform is using web3.js library to interact eith smart contracts. 

I used Next.js and Semantic UI react to design the frontend. And for saving the trade transaction history, I write node.js API and saves history in mongodb database.

## How to run

1. Clone repo `https://github.com/sunnyRK/ChainLinkRefrence.git`
2. `cd ChainLinkRefrence`
3. `npm install`
4. `node server.js`
5. Currently deployed on Kovan Network

## Future Task

1. Get Liquidity from other protocols(AAVE, Compound)
2. Use ENS(Ethreum name service) to give more flexibilty to user

## Tech stack

Ethereum   
Solidity   
Web3.js  
Chainlink Price feed and Decentralized Oracles 
Uniswap-V2  
nodejs api  
MongoDB  
Next.Js  
Semantic UI React




