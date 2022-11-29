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
Silva Token deployed:  0x20057618f015F6Ff0Ba57B2d7D20b0aed28beD03
Facuet contract deployed:  0xd15049bab2153E6a4246c4f1d51d7Fba23F8ad89

You have both ethereum-waffle and @nomicfoundation/hardhat-chai-matchers installed. They don't work correctly together, so please make sure you only use one.

We recommend you migrate to @nomicfoundation/hardhat-chai-matchers. Learn how to do it here: https://hardhat.org/migrate-from-waffle
Compiled 1 Solidity file successfully
You have both ethereum-waffle and @nomicfoundation/hardhat-chai-matchers installed. They don't work correctly together, so please make sure you only use one.

We recommend you migrate to @nomicfoundation/hardhat-chai-matchers. Learn how to do it here: https://hardhat.org/migrate-from-waffle
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
$ npx hardhat verify --contract contracts/SilvaToken.sol:SilvaToken --network mumbai --constructor-args arguments.js 0x20057618f015F6Ff0Ba57B2d7D20b0aed28beD03


Successfully verified contract SilvaToken on Etherscan.
https://mumbai.polygonscan.com/address/0x20057618f015F6Ff0Ba57B2d7D20b0aed28beD03#code

Successfully verified contract Facuet on Etherscan.
https://mumbai.polygonscan.com/address/0xA6F2f5CDe2f4e081D027830Ac35024Bc5C3eaD50

npx hardhat verify --contract contracts/Faucet.sol:Faucet --network mumbai --constructor-args arguments.js 0x551dD4ED3bFc3b70B3E4bf65041157dbB9261F28



npx hardhat verify --contract contracts/Faucet.sol:Faucet --network mumbai --constructor-args arguments2.js 0xd15049bab2153E6a4246c4f1d51d7Fba23F8ad89
(node:44193) ExperimentalWarning: stream/web is an experimental feature. This feature could change at any time
(Use `node --trace-warnings ...` to show where the warning was created)
Nothing to compile
Successfully submitted source code for contract
contracts/Faucet.sol:Faucet at 0xd15049bab2153E6a4246c4f1d51d7Fba23F8ad89
for verification on the block explorer. Waiting for verification result...

Successfully verified contract Faucet on Etherscan.
https://mumbai.polygonscan.com/address/0xd15049bab2153E6a4246c4f1d51d7Fba23F8ad89#code



```
