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
