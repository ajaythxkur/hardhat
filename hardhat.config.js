/** @type import('hardhat/config').HardhatUserConfig */
require('@nomiclabs/hardhat-waffle');
const ALCHEMY_API_KEY = "";
const PRIVATE_KEY = "";
module.exports = {
  solidity: "0.8.18",
  networks:{
    sepolia:{
      url:`https://eth-sepolia.g.alchemy.com/v2/${ALCHEMY_API_KEY}`,
      accounts:[`${PRIVATE_KEY}`]
    }
  }
};
