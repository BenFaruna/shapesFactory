import { ethers } from "hardhat";

async function main() {

  const shapesFactory = await ethers.deployContract("ShapesFactory");

  await shapesFactory.waitForDeployment();

  console.log(
    `Shapesfactory deployed to ${shapesFactory.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
