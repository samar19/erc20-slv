
// scripts/deploy_mytoken.js
const { ethers, upgrades } = require("hardhat");

async function main() {
  const SilvaToken = await ethers.getContractFactory("SilvaToken");

  const sl = await upgrades.deployProxy(SilvaToken, [], {
    initializer: "initialize",
  });

  await sl.deployed();
  console.log("MyToken deployed to:", sl.address);
}

main();
