import { ethers } from "hardhat";

const main = async () => {
    const shapesFactory = await ethers.getContractAt("ShapesFactory", "0x899d68E0D68157dd225323b7c77ceC39613611E7");

    const createShapeTx = await shapesFactory.createShape(5, 5);
    await createShapeTx.wait();

    const shapeAddress = await shapesFactory.getLastShapeAddress();

    const shape = await ethers.getContractAt("Shapes", shapeAddress);
    console.log(await shape.area());
};

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});