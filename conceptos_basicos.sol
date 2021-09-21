pragma solidity >=0.5.4 <0.7.0;
//pragma solidity ^0.4.0;

import "./Erc20.sol";

//  @title First comment
//  @author leanuema
//  @notice the contract only contains 2 variales and 1 constructor for the example
//  @dev We create a new contract with a constructor that initialize our variables
//  @param no contains param
//  @return no contains return
contract primer_contrato {
    //logica del contrato
    address owner;
    Erc20Basic token;

    constructor() public {
    owner = msg.sender;
    token = new Erc20Basic(1000);
    }

}