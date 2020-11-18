package com.rsp.main.service;

import java.util.List;

import com.rsp.main.model.Employee;

public interface IEmployeeService {
	
	Integer saveEmployee(Employee e);
	List<Employee> getAllEmployees();
	void deleteById(Integer id);
	Employee findById(Integer id);
	void updateEmployeeById(Employee e);

}
