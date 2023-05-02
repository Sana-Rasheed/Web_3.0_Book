// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.16;
/// @title A contract for demonstrating Nested Mapping
/// @author Jitendra Gangwar
/// @notice For now, this contract defining the Voting choice of the Employees for electing their Manager
contract NestedMapping{
	//Nested Mapping
	mapping(uint => mapping(address => bool)) voteToManager;
	//function for Vote Registration of the Employees
	function voteRegistration(uint _empId, bool _voteChoice) external {
		voteToManager[_empId][msg.sender] = _voteChoice;
	}
	//function for knowing the Voting Status of the Employees
	function getVoteStatus(uint _empId, address _empAddr) external view returns(bool){
			return voteToManager[_empId][_empAddr];
		}
	}
