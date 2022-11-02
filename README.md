# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
 npm i --save dev hardhat
 ```invoke hardhat
 ```
 npx hardhat 
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy_mytoken.js
Silva Token deployed:  0x5FbDB2315678afecb367f032d93F642f64180aa3
```
npx hardhat verify --contract contracts/SilvaToken.sol 0x5FbDB2315678afecb367f032d93F642f64180aa3  --network mumbai
npx hardhat verify --network mumbai 0x5FbDB2315678afecb367f032d93F642f64180aa3
 

 # Design Token

SLV token design is
INITAIL SUPPLY = 1000000000000000000000000
- INITAIL SUPPLY initialy generate mint and then send to the owner(send to owner ) - 70,000,000 can send family or liquidity swap (done )
- max supply(capped) - 100,000,000
- minting strategy
- block reward
- token burnable
- create block reward to distribute new supply to miners

