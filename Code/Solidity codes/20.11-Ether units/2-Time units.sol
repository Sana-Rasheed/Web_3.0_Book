// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Timeunits_Example {
	
// Declaring a state variable that will
// store the current block timestamp as
// seconds since unix epoch(January 1, 1970)
uint256 public startTime;
	
// setting the startTime variable
function setStartTime() public {
	startTime = block.timestamp;
}

// calculates the time in dd:hh:mm:ss format.
// For example, 3702 seconds will be 0 dd, 1 hh,
// 1 mm, 42 ss that is 0 days, 1 hours, 1 minutes
// and 42 seconds
function elapsedTime() public view returns (uint256 dd,
											uint256 hh,
											uint256 mm,
											uint256 ss) {
	dd = (block.timestamp - startTime)/1 days;
	hh = (block.timestamp - startTime)/1 hours - (dd * 24);
	mm = (block.timestamp - startTime)/1 minutes - (hh * 60) -
		(dd * 24 * 60);
	ss = (block.timestamp - startTime)/1 seconds - (mm * 60) - (hh * 60 * 60) -
		(dd * 24 * 60 * 60);
}
}
