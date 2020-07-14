pragma solidity ^0.5.0;

contract Victim {

  // Mapping 'usersBalance' keeps track of the users balance
  mapping (address => uint256) public usersBalance;


  function deposit () public payable  {

      //require((balances[msg.sender] + msg.value) >= balances[msg.sender]);
      usersBalance[msg.sender] += msg.value;

  }


  function withdraw (uint256 _amount) public {

      // Requires user balance > = than the _amount user wants to withdraw
      require(_amount <= usersBalance[msg.sender]);

      // Sends the _amount to msg.sender
      // This function needs a single bytes argument. Use "" as argument to provide empty calldata.
      msg.sender.call.value(_amount)("");

      // Updates user balance by subtracting _amount
      usersBalance[msg.sender] -= _amount;

  }

}
