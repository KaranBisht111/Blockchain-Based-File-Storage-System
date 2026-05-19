# 📦 Blockchain-Based File Storage System

A decentralized file storage system built using Ethereum Smart Contracts, IPFS, and MetaMask integration.  
This project allows users to upload files to IPFS and securely store the file metadata on the Ethereum blockchain.

---

## 🚀 Features

- 🔐 Decentralized file storage
- 🌐 IPFS integration using Pinata
- 🦊 MetaMask wallet connection
- ⛓️ Ethereum smart contract for file metadata
- 📂 File upload and retrieval
- 🎨 Responsive modern UI using Bootstrap
- 📜 Blockchain transaction tracking

---

## 🛠️ Tech Stack

### Frontend
- HTML5
- CSS3
- Bootstrap 5
- JavaScript

### Blockchain
- Solidity
- Ethereum
- Web3.js

### Storage
- IPFS
- Pinata Cloud

### Wallet
- MetaMask

---

## 📁 Project Structure

```bash
Blockchain-Based-File-Storage-System/
│
├── contracts/
│   └── SimpleFileStorage.sol
│
├── frontend/
│   └── index.html
│
├── screenshots/
│
├── README.md
├── requirements.txt
└── LICENSE
```

---

## ⚙️ Smart Contract

The smart contract stores:

- File Owner Address
- IPFS CID
- Filename
- Upload Timestamp

### Main Functions

#### `registerFile()`
Registers uploaded file metadata on blockchain.

#### `getOwnerFiles()`
Returns all files uploaded by a specific wallet address.

---

## 🔄 Workflow

1. User connects MetaMask wallet
2. User selects file
3. File uploads to IPFS through Pinata
4. IPFS CID is generated
5. CID + metadata stored on Ethereum blockchain
6. Uploaded file becomes accessible through IPFS gateway

---

## 🧠 Smart Contract Code

```solidity
function registerFile(string calldata _cid, string calldata _filename) external returns (uint256)
```

Stores the uploaded file information on-chain.

---

## 📸 Screenshots

### Home Page
Add screenshot here

### MetaMask Connection
Add screenshot here

### File Upload
Add screenshot here

---

## 🧪 How to Run

### 1️⃣ Clone Repository

```bash
git clone https://github.com/KaranBisht111/Blockchain-Based-File-Storage-System.git
```

---

### 2️⃣ Open Project

Open `index.html` in browser.

---

### 3️⃣ Configure Variables

Inside `index.html` replace:

```javascript
const PINATA_JWT = "YOUR_PINATA_JWT";
const CONTRACT_ADDRESS = "YOUR_CONTRACT_ADDRESS";
const CONTRACT_ABI = YOUR_CONTRACT_ABI;
```

---

### 4️⃣ Connect MetaMask

- Install MetaMask extension
- Connect wallet
- Switch to deployed network

---

### 5️⃣ Upload File

- Select file
- Click Upload & Store
- Transaction will be stored on blockchain

---

## 🔐 Security Notes

- Never expose your real Pinata JWT in production
- Use backend APIs for secure token handling
- Consider access control mechanisms

---

## 🌟 Future Enhancements

- File encryption
- User authentication
- Multi-file upload
- File sharing permissions
- Download analytics
- Decentralized database integration

---

## 📚 Learning Outcomes

This project demonstrates:

- Smart contract development
- Web3 integration
- Decentralized storage concepts
- Ethereum blockchain interaction
- DApp frontend development

---

## 📄 License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

Karan Bisht

---
