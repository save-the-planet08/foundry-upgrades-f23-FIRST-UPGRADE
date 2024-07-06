# Foundry Upgrade Project

This repository showcases a project aimed at demonstrating how to implement and upgrade smart contracts using the Universal Upgradeable Proxy Standard (UUPS). The project includes two versions of a contract (`BoxV1` and `BoxV2`), along with scripts for deploying and upgrading the contract, and comprehensive tests to validate the process.

## Project Overview

### Purpose

The primary goal of this project is to illustrate the process of creating and upgrading smart contracts in a secure and efficient manner using the UUPS proxy pattern. This pattern allows for the contract logic to be upgraded without changing the contract address, preserving the state and permissions of the original contract.

### Components

- **Smart Contracts**:
  - **BoxV1**: The initial version of the contract that provides basic functionality to store and retrieve a number.
  - **BoxV2**: The upgraded version that extends the functionality of `BoxV1` by adding the ability to set a new number.
- **Deployment Scripts**:
  - **DeployBox**: A script to deploy the `BoxV1` contract behind a UUPS proxy.
  - **UpgradeBox**: A script to upgrade the implementation of the proxy to `BoxV2`.
- **Tests**:
  - **DeployAndTestUpgradeTst**: A comprehensive test suite to ensure that the deployment and upgrade processes work as expected.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Foundry](https://getfoundry.sh/) - A blazing fast, portable and modular toolkit for Ethereum application development.
- [Node.js](https://nodejs.org/) - JavaScript runtime for executing the deployment scripts.

### Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/save-the-planet08/foundry-upgrades-f23-FIRST-UPGRADE.git
    cd foundry-upgrade-project
    ```

2. **Install dependencies**:
    ```sh
    forge install
    ```

### Deployment

1. **Deploy `BoxV1`**:
    - Run the deployment script to deploy the initial version of the contract behind a UUPS proxy.
    ```sh
    forge script script/DeployBox.s.sol:DeployBox --rpc-url <YOUR_RPC_URL> --broadcast
    ```

2. **Upgrade to `BoxV2`**:
    - Run the upgrade script to change the implementation of the proxy to `BoxV2`.
    ```sh
    forge script script/UpgradeBox.s.sol:UpgradeBox --rpc-url <YOUR_RPC_URL> --broadcast
    ```

### Running Tests

To ensure that everything is working correctly, run the tests:

```sh
forge test

