# Crowdfunding DApp (Hardhat + React + Sepolia)

A decentralized crowdfunding platform built on Ethereum using **Solidity, Hardhat, React, and MetaMask**.  
Contributors can fund campaigns transparently, and creators can withdraw funds if the campaign goal is reached before the deadline.  
This project was developed as part of a **Blockchain Minor Project** (RV University, April 2025).

---

## Table of Contents
1. [Introduction](#-introduction)  
2. [Objectives](#-objectives)  
3. [System Architecture](#-system-architecture)  
4. [Technology Stack](#-technology-stack)  
5. [Backend Setup](#-backend-setup)  
6. [Frontend Setup](#-frontend-setup)  
7. [Application Flow](#-application-flow)  
8. [Screenshots](#-screenshots)  
9. [Challenges Faced](#-challenges-faced)  
10. [Future Enhancements](#-future-enhancements)  
11. [Contributors](#-contributors)  
12. [License](#-license)  

---

## Introduction
This project is a **Decentralized Application (DApp)** that enables users to contribute funds to crowdfunding campaigns hosted on the Ethereum blockchain.  

- Each campaign has a **funding goal** and a **deadline**.  
- If the goal is met before the deadline → the creator can **withdraw funds**.  
- If the goal is not met → contributors can **get refunds**.  

The system ensures **transparency**, **security**, and **trustless execution** through smart contracts.  

---

## Objectives
- Build a functional decentralized crowdfunding platform.  
- Demonstrate smart contract creation and interaction.  
- Integrate blockchain logic with a **user-friendly React interface**.  
- Handle real-world-like contributions, deadlines, and withdrawals securely.  

---

## System Architecture
- **Smart Contract (Backend)**:  
  Manages projects, contributions, deadlines, and withdrawals. Deployed on **Sepolia testnet**.  

- **React App (Frontend)**:  
  Provides a clean UI for creating projects, contributing, and viewing campaign progress. Connects with **MetaMask** for wallet access.  

--- 

## Technology Stack
- **Backend:** Solidity, Hardhat, Ethers.js  
- **Frontend:** React.js, CSS, Ethers.js  
- **Wallet Integration:** MetaMask  
- **Blockchain Network:** Sepolia Testnet  

---

## Backend Setup
1. Navigate to the backend folder:
   ```bash
   cd backend
   npm install
   npx hardhat compile
2. Deploy the contract
   ```bash
   npx hardhat run scripts/deploy.js --network sepolia
3. Copy the deployed contract address for frontend integration.

## Frontend Setup
1. Navigate to the frontend folder
   ```bash
   cd frontend
   npm install
   npm start
2. Open the app at http://localhost:3000
3. Connect MetaMask (Sepolia testnet) to interact with the contract.

## Application Flow

Connect Wallet → User connects MetaMask.

Create Project → Owner creates a campaign by setting a goal and deadline.

Contribute → Other users send ETH to active campaigns.

View Progress → All contributors can see funds raised and deadlines.

Withdraw Funds → If goal met before deadline, only project creator can withdraw.

Error Handling → Non-creators trying to withdraw get an error message.

## Screenshots
1. Creating a project and contributing to a project
   ![WhatsApp Image 2025-09-13 at 13 59 32_e9f04709](https://github.com/user-attachments/assets/90fc509a-6f54-4a94-bddf-3e0e24bc66e6)
   ![WhatsApp Image 2025-09-13 at 14 00 05_04117980](https://github.com/user-attachments/assets/030464dc-f613-4274-af39-4d37aa86a0b4)

2. Error Handling (Non-owner trying to withdraw)
   ![WhatsApp Image 2025-09-13 at 14 00 33_49012632](https://github.com/user-attachments/assets/2a449012-b931-48b3-865a-8d714827a5bd)

## Challenges Faced

Getting MetaMask connected and synced with the right network.

Handling contract deadlines and ensuring time logic works correctly.

Keeping the frontend updated with real-time blockchain data.

## Future Enhancements

Refunds if funding goal is not met.

Milestone-based payouts.

User profiles to track contributions and projects.

Token rewards for contributors.

Multi-chain deployment for cheaper fees.

## Contributors
Sharmitha S


