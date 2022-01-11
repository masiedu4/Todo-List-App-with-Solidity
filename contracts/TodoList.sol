// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Todolist {

event Status (address sender , string [] remainingTasks);

address private owner;

constructor () {
    owner = msg.sender;
}

 string [] private allTasks;

   function addTask ( string memory taskName) public { 
    require(owner == msg.sender , "Not authorozied to add tasks to this smart contract");  
     allTasks.push(taskName);
       
     emit Status (msg.sender , allTasks);
   }

   function getAllTasks () public view returns( string [] memory) {
       require(owner == msg.sender , "Not authorozied to view tasks in this smart contract");  
       return allTasks;
   } 
  
   function removeTask(uint _taskNumber) public {
       require(owner == msg.sender , "Not authorozied to delete tasks from this smart contract");  
       delete allTasks[_taskNumber];
       emit Status (msg.sender , allTasks);
   }

   function deleteAllTaks () public {
       require(owner == msg.sender , "Not authorozied to empty tasks on this smart contract");  
      delete allTasks;  
   }
}