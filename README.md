





Growpad Smart Contract
Growpad is an Ethereum smart contract that allows users to make contributions and keeps a record of individual and total contribution.

Features

Ownership: Only the owner (deployer of the contract) can withdraw the funds from the contract.
Contribute: Any Ethereum address can contribute Ether to the contract.
Withdraw: Only the owner can withdraw a specified amount of Ether.
Track Contributions: The contract keeps track of individual and total contributions.
Events:
Contributed: Emitted when a user contributes Ether to the contract.
Withdrew: Emitted when the owner withdraws Ether from the contract.
Functions:
1. contribute()
This function allows users to send Ether to the contract. An event named Contributed is emitted, recording the contribution.

Requirements:

The contribution (Ether sent with the transaction) must be greater than 0.
2. withdraw(uint256 amount)
Allows the owner to withdraw a specified amount of Ether from the contract. An event named Withdrew is emitted upon successful withdrawal.

Requirements:

Only the owner can call this function.
The specified withdrawal amount must be less than or equal to the contract's balance.
3. getContributionOf(address contributor)
Returns the total amount of Ether contributed by a specified address.

4. getTotalContributions()
Returns the total amount of Ether contributed to the contract by all users.

Setup and Deployment:
To deploy and interact with this contract, you'll need an Ethereum development environment like Truffle or Hardhat and an Ethereum wallet like MetaMask.

Compile the contract with the Solidity compiler.
Deploy it to your desired Ethereum network using your development environment.
Interact with the contract functions using an Ethereum wallet or a dApp interface.
