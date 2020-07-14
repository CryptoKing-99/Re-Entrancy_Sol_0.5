# Re-Entrancy_Sol_0.5
Victim and Attacker contracts for re-entrancy attack testing.

## Deployment
- Depoly Victim.sol and copy the contract address;
- Deploy Exploit.sol by passing "victim.sol address" to the constructor;

## Attack
- Deposit ether to Victim with an address != address(Exploit.sol);
- Deposit ether to Victim by calling deposit () in Exploit.sol;
- Call function attack ()

## Withdraw stolen funds
- Withdraw stolen funds by calling withdrawFunds () in Exploit.sol
