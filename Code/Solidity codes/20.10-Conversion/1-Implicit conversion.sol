// Solidity program to demonstrate
// an implicit conversion from a
// 'uint' to an 'int'
pragma solidity ^0.8.0;

contract ImplicitConversion {
	function add() public pure returns (uint) {
		uint a = 10;
		uint b = 20;
		return a + b;
	}
}
