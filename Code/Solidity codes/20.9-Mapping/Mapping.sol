// Solidity program to
// count number of
// values in a mapping
pragma solidity ^0.4.18;

contract mapping_example {
	
	// Defining structure
	struct student {

		// Declaring different
		// structure elements
		string name;
		string subject;
		uint8 marks;
	}
	
	// Creating mapping
	mapping (address => student) result;
	address[] student_result;
	
	//Function adding values to the mapping
	function adding_values() public {
		var student
		= result[0xDEE7796E89C82C36BAdd1375076f39D69FafE252];

		student.name = "John";
		student.subject = "Chemistry";
		student.marks = 88;
		student_result.push(
		0xDEE7796E89C82C36BAdd1375076f39D69FafE252) -1;

	}
	
	// Function to retrieve
	// values from the mapping
	function get_student_result(
	) view public returns (address[]) {
		return student_result;
	}

	// Function to count number
	// of values in a mapping
	function count_students(
	) view public returns (uint) {
		return student_result.length;
	}
}
