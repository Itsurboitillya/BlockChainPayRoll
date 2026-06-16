
pragma solidity ^0.8.20;


contract Attendance{
    address public employer;
    address public employee;


    uint256 public attendanceDays;
    uint256 public salary = 1 ether;

    constructor(address _employee) {
        employer = msg.sender;
        employee = _employee;
    }

    modifier onlyEmployer() {
        require(msg.sender == employer, "Only employer can call this function");
        _;
    }

    function markAttendance() external onlyEmployer {
        attendanceDays += 1;
        //attandence ++1;
    }


    function payEmployee() external onlyEmployer {
        require(attendanceDays >= 5 , "Less than 5 days of attendance, cannot pay employee");

        attendanceDays = 0; // Reset attendance after payment

        payable(employee).transfer(salary);
    }

    receive() external payable {}

}


