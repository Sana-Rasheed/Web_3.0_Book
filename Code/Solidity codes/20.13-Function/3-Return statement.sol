pragma solidity ^0.5.0;

contract Test {
   function getResult() public view returns(uint product, uint sum){
      uint a = 1; // local variable
      uint b = 2;
      product = a * b;
      sum = a + b;
  
      //alternative return statement to return 
      //multiple values
      //return(a*b, a+b);
   }
}