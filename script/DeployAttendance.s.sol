// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/Attendance.sol";

contract DeploymentAttendance is Script {
    function run() external {
        // Start recording transactions to be broadcasted
        vm.startBroadcast();

        //passing the employee's address

        Attendance attendance = new Attendance(0xa0Ee7A142d267C1f36714E4a8F75612F20a79720);

        //the deployed address to the console so you can easily copy it
        console.log("Attendance contract deployed to:", address(attendance));

        // 3. Stop recording
        vm.stopBroadcast();
    }
}