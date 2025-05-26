# 🛡️ AutoSure – Parametric Insurance on the Blockchain  
**Tagline:** *Insurance that just happens.*

---

## 📌 Overview

**AutoSure** is a decentralized insurance protocol that enables **automatic payouts** when real-world conditions are met — no claims, no paperwork.

This smart contract implements a **parametric insurance model**, where users are paid automatically when predefined events (like flight delays, weather anomalies, or crop failures) are triggered. In this simplified version, events are manually triggered by the contract owner (ideal for prototyping).

---

## ✨ Features

- 🔐 **Decentralized Coverage** – Smart contract-based insurance logic.
- ⚡ **Instant Payouts** – Users get paid automatically when the event occurs.
- 💰 **Fixed Premium and Payout** – Simple economic model (0.01 ETH in, 0.05 ETH out).
- 👤 **One Policy per User** – Avoids spam or overlapping claims.
- 📋 **Owner-Controlled Triggers** – Manual event triggering simulates oracles.

---

## 🚀 Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)
- [MetaMask](https://metamask.io/)
- Ethereum testnet (e.g., Sepolia or local Hardhat)

---

### 🧱 Deployment

```bash
git clone https://github.com/yourusername/autosure.git
cd autosure
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network localhost
```
Contract Address: 0x66f511febaf4bb96e757b193572635b92300563f
![Screenshot (46)](https://github.com/user-attachments/assets/d31ae3b2-6205-4499-991a-06d4e764035a)
