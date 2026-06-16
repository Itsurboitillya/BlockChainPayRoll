pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/Attendance.sol";

contract AttendanceTest is Test {
    Attendance public attendance;
    address public employer;
    address public employee;

    function setUp() public {
        employer = address(this);
        employee = address(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        attendance = new Attendance(employee);
    }

    function testMarkAttendance() public {
        attendance.markAttendance();
        assertEq(attendance.attendanceDays(), 1);
    }

    function testPayEmployee() public {
        // Mark attendance for 5 days
        for (uint256 i = 0; i < 5; i++) {
            attendance.markAttendance();
        }

        // Fund the contract with enough ether to pay the employee
        payable(address(attendance)).transfer(5 ether);

        // Pay the employee
        attendance.payEmployee();

        // Check that attendanceDays is reset to 0
        assertEq(attendance.attendanceDays(), 0);
    }

    // 1. Renamed the function to follow the new convention
    function test_RevertWhen_LessThanFiveDays() public {
        // Mark attendance for less than 5 days
        for (uint256 i = 0; i < 4; i++) {
            attendance.markAttendance();
        }

        // 2. Tell Foundry to expect a revert on the very next call
        vm.expectRevert();

        // Attempt to pay the employee, which should now revert
        attendance.payEmployee();
    }
}