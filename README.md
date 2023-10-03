Smart Contract Exception Handling Showcase:
This Solidity smart contract, named "Exception," serves as an educational tool to elucidate exception handling within the context of Ethereum smart contracts. It employs three distinct exception-handling mechanisms: require(), assert(), and revert(). Let's delve deeper into its workings.

Contract Structure:
The contract begins with a specialized comment, // SPDX-License-Identifier: MIT, explicitly specifying the MIT license governing the code's usage, modification, and distribution.

Next, the code includes pragma solidity 0.8.18;, specifying the version of the Solidity programming language applied in this contract, which is Solidity version 0.8.18.

The contract itself is named "Exception" and exemplifies the utilization of different exception-handling methods.

Key Functions:

setValue Function:

This function empowers the contract owner to assign a new value to the state variable named "value," declared as uint256 public.
However, it imposes a requirement via require() that validates whether the new value surpasses the current value. Failure to meet this condition leads to transaction reversal, accompanied by a descriptive error message ("New value must be greater than the current value.").
getSquare Function:

"getSquare" accepts a numerical input as an argument and computes its square.
Prior to computation, the function employs assert() to verify an invariant condition: the input number should be non-negative (greater than or equal to 0).
In cases of a false condition, signifying a code bug, the transaction is promptly reverted to maintain the contract's integrity.
alwaysRevert Function:

This function provides a practical illustration of transaction reversal using revert().
Whenever invoked, it unconditionally reverts the transaction with a bespoke error message ("This function always reverts.").
Exception-handling mechanisms are pivotal in upholding the security and functionality of smart contracts. These mechanisms empower developers to enforce crucial conditions and adeptly manage exceptional scenarios, thereby ensuring the desired contract behavior while averting unintended states or vulnerabilities.

## Help

Make sure to have the compiler option set to 0.8.18 to avoid version depenedency errors. 
```
pragma solidity ^0.8.18
```

## Authors

  
[Arpit Tyagi]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
