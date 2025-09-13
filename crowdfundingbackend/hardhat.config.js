require("@nomiclabs/hardhat-ethers"); 
module.exports = { 
solidity: "0.8.18", 
networks: { 
localhost: { 
url: "http://127.0.0.1:8545", // Local Hardhat blockchain 
}, 
sepolia: {
    url : "https://eth-sepolia.g.alchemy.com/v2/424x5-7DJPcb3ZCftAbHBnmt9o9GX3_4",
    accounts:["0x508c61bad437448e89f4d688013b1bd19fab8362b3c98d19e14d3673b2458a4e"],
   
  }
}, 
}; 
