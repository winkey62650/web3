const{ethers} = require('hardhat');

async function main(){
    const whitelistConstrct = await ethers.getContractFactory('Whitelist');
    
    const deployedWhitelistCotract = await whitelistConstrct.deploy(10);

    await deployedWhitelistCotract.deployed();

    console.log("Whitelist Contract Address:", deployedWhitelistCotract.address)
}

main()
    .then(() => process.exit(0))
    .catch((error) =>{
        console.error(error);
        process.exit(1);
    })