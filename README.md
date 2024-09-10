# Development notes
# Development notes
# Development notes
# ChainBoard

A decentralized message board DApp where users can post messages, comment, and like using wallet identities.

## Features
- Wallet connection (MetaMask / WalletConnect)
- Post messages with attachments (IPFS/Arweave)
- Nested replies
- Like/Dislike with duplicate prevention
- Anonymous or wallet-identified posting
- Pagination and sorting by time or likes

## Tech Stack
- Solidity smart contracts (Hardhat)
- React + TypeScript frontend (Vite)
- wagmi + RainbowKit for wallet UX
- Optional indexer for fast queries (GraphQL/REST)

## Repository Layout
- `contracts/` Solidity sources
- `test/` contract tests
- `apps/web/` React web DApp
- `scripts/` helper scripts
- `docs/` technical docs
## Deployment\n- Use Hardhat to deploy and verify contracts.
## Security\n- Reentrancy-safe like flow; duplicate vote prevention via mapping.
## Deployment\n- Use Hardhat to deploy and verify contracts.
## Security\n- Reentrancy-safe like flow; duplicate vote prevention via mapping.
## Deployment\n- Use Hardhat to deploy and verify contracts.
