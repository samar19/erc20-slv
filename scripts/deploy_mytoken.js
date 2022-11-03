
// scripts/deploy_mytoken.js
const hre = require("hardhat");

async function main() {
  const SilvaToken = await hre.ethers.getContractFactory("SilvaToken");
  const sl = await SilvaToken.deploy(100000000 , 50);
  
  await sl.deployed();

  console.log("Silva Token deployed: ", sl.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

