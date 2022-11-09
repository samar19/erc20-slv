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
```
npx hardhat verify --contract contracts/SilvaToken.sol 0x5FbDB2315678afecb367f032d93F642f64180aa3  --network mumbai
npx hardhat verify --network mumbai 0x5FbDB2315678afecb367f032d93F642f64180aa3
 

 # Design Token

SLV token design is
INITAIL SUPPLY = 1000000000000000000000000
1- INITAIL SUPPLY initialy generate mint and then send to the owner(send to owner ) - 70,000,000 can send family or liquidity swap (done )
2- max supply(capped) - 100,000,000 (done)
3- token burnable (done)
4- create block reward to distribute new supply to miners
- minting strategy
- block reward


# Deploy and verify successfully

```shell
$ npx hardhat run scripts/deploy_mytoken.js --network mumbai
Silva Token deployed:  0x2e13390a6E75E6DD4e8B974FDf8E3cBC41e0abb1
Facuet contract deployed:  0x7C32B1F6ceD4b1C44052C09599BB54f66f37Bf8C
You have both ethereum-waffle and @nomicfoundation/hardhat-chai-matchers installed. They don't work correctly together, so please make sure you only use one.

We recommend you migrate to @nomicfoundation/hardhat-chai-matchers. Learn how to do it here: https://hardhat.org/migrate-from-waffle
Compiled 1 Solidity file successfully
You have both ethereum-waffle and @nomicfoundation/hardhat-chai-matchers installed. They don't work correctly together, so please make sure you only use one.

We recommend you migrate to @nomicfoundation/hardhat-chai-matchers. Learn how to do it here: https://hardhat.org/migrate-from-waffle
Silva Token deployed:  0x009a350a03071DBd16c38B197A9569573C4559F3
```
To verify with the same inital value as in deployment, cat arguments.js
```javascript
module.exports = [100000000,50]
```
same as in scripts/deploy_mytoken.js                          [14:26:39]
```javascript
...
  const sl = await SilvaToken.deploy(100000000 , 50);
...

```
result
```shell
$ npx hardhat verify --contract contracts/SilvaToken.sol:SilvaToken --network mumbai --constructor-args arguments.js 0x009a350a03071DBd16c38B197A9569573C4559F3
 samar : npx hardhat verify --contract contracts/SilvaToken.sol:SilvaToken --network mumbai --constructor-args arguments.js 0x6632B0a112eB137a1026B666152BAcD26c13E040

You have both ethereum-waffle and @nomicfoundation/hardhat-chai-matchers installed. They don't work correctly together, so please make sure you only use one.

We recommend you migrate to @nomicfoundation/hardhat-chai-matchers. Learn how to do it here: https://hardhat.org/migrate-from-waffle
Nothing to compile
Successfully submitted source code for contract
contracts/SilvaToken.sol:SilvaToken at 0x009a350a03071DBd16c38B197A9569573C4559F3
for verification on the block explorer. Waiting for verification result...
Successfully
```
