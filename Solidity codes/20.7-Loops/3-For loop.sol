pragma solidity ^0.5.0;

contract SolidityTest {
   uint storedData; 
   constructor() public{
      storedData = 10;   
   }

   function getResult() public view returns(string memory){
      uint a = 10; 
      uint b = 2;
      uint result = a + b;
      return integerToString(result); 
   }

   function integerToString(uint _i) internal pure 
      returns (string memory) {
      if (_i == 0) {
         return "0";
      }
      uint j=0;
      uint len;
      for (j = _i; j != 0; j /= 10) {  //for loop example
         len++;         
      }
      bytes memory bstr = new bytes(len);
      uint k = len - 1;
      while (_i != 0) {
         bstr[k--] = byte(uint8(48 + _i % 10));
         _i /= 10;
      }
      return string(bstr);//access local variable
   }
}
