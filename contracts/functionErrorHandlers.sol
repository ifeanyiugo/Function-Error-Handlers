// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FuntionErrorHandlers {
   
string public  fullName;
    uint256 public age;
    uint256 public  age2;


// function that returns the full Name of a student. It uses the require statement to Validate that neither first name nor last name is empty
function studentName(string memory _firstName, string memory _lastName) public   returns(string memory){

// Validate that neither first name nor last name is empty
require(bytes(_firstName).length > 0, "First name must not be empty");
 require(bytes(_lastName).length > 0, "Last name must not be empty");

   fullName = string(abi.encodePacked(_firstName, " ", _lastName)); return fullName;

}


// function that allows a user to calcualte age by providing the current year and birth year. The function uses assert statement for validation and error handling
function calcAge(uint256 _birthyear, uint256 _currentYear) public   returns(uint256) {
    assert (_birthyear != 0);
    assert (_currentYear != 0);
    assert (_currentYear > _birthyear);

   return  age = _currentYear - _birthyear;
    
}


 // Function that uses the require and revert statement for error Handling. It calcualte the age using the user inputs
function calcAge2 (uint256 _birthyear, uint256 _currentYear) public  returns (uint256){

    require (_birthyear > 0, "Birth Year must be greater than zero");
    require(_currentYear > 0, "Current Year must be greater than zero" );

    if (_currentYear > _birthyear){
        age2 = _currentYear - _birthyear;
    }else {
        revert ("Current Year must be greater than Birth Year");
    }
return age2 ;
}


function getFullName() external  view returns(string memory){
    return  fullName;
}

function getAge() external  view returns (uint256) {
    return  age;
}

function getAge2 () external  view  returns (uint256){
    return  age2;
}   
   

}
