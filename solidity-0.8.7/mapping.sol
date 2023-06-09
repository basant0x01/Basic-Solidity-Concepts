// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract MainContract{

      struct employess{
            address emp_address;
            string emp_name;
            uint emp_salary;
      }
      
      mapping(address=>employess) public employess_details;

      function registerEmp(string memory _emp_name, uint _emp_salary) public {
            // Note: Variables should arranged as per as the struct
            employess_details[msg.sender]=employess(msg.sender,_emp_name,_emp_salary);
      }
 }
