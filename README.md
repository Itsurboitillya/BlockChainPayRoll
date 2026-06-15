
# Attendance Payment Smart Contract

A simple Solidity smart contract project using **Foundry (Forge + Cast + Anvil)** that simulates an employee payment system based on weekly attendance.

If an employee attends all 5 working days (Mon–Fri), they earn **1 ETH**. Miss a day? No ETH. The blockchain does not care about your excuses.

---

## 🚀 Project Idea

Traditional payroll systems trust humans to count attendance correctly. That usually goes fine until it doesn’t.

This project replaces that trust with a smart contract that:

- Tracks attendance per employee
- Checks 5 working days completion
- Releases payment automatically in Ether

---

## Business Logic

- Week = 5 working days (Mon–Fri)
- Each attendance mark = 1 day
- Required attendance = 5 days
- Reward = **1 ETH**

### Rules:
- If attendance == 5 → eligible for payment
- If attendance < 5 → no payment
- Payment can only be claimed once per week

---

## Tech Stack

- Solidity
- Foundry
  - Forge (testing)
  - Cast (interaction)
  - Anvil (local blockchain)

---

## Project Structure




## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
