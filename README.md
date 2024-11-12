# ErrorHandling in Solidity Smart Contract

This is a simple solidity smart contract that implements the `require()`, `assert()` and `revert()` statements to handle errors solidity smart contract

### Demo Video

https://www.loom.com/share/5fcfaf941e4c44d8af61ef5d6e31a0d0?sid=3f7c4a0f-0b7e-46ee-8e3c-aa7f1eb382f1

## Contract Details

### studentName()

```solidity

 //  function that returns the full Name of a student. It uses the require statement to Validate that neither first name nor last name is empty
    function studentName(string memory _firstName, string memory _lastName) public   returns(string memory){

// Validate that neither first name nor last name is empty
require(bytes(_firstName).length > 0, "First name must not be empty");
 require(bytes(_lastName).length > 0, "Last name must not be empty");

   fullName = string(abi.encodePacked(_firstName, " ", _lastName)); return fullName;

}
```

### calcAge()

```solidity
 // function that allows a user to calcualte age by providing the current year and birth year. The function uses assert statement for validation and error handling
function calcAge(uint256 _birthyear, uint256 _currentYear) public   returns(uint256) {
    assert (_birthyear != 0);
    assert (_currentYear != 0);
    assert (_currentYear > _birthyear);

   return  age = _currentYear - _birthyear;

}


```

### calcAge2

```solidity
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

```

## Authors

Ifeanyi
[@metacraftersio](https://github.com/ifeanyiugo)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
