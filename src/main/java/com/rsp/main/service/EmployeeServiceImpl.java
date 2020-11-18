package com.rsp.main.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rsp.main.model.Employee;
import com.rsp.main.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements IEmployeeService {

	@Autowired
	private EmployeeRepository repo;

	@Override
	public Integer saveEmployee(Employee e) {
		e.setHra(calculateHra(e.getSalary()));
		e.setDa(calulateDa(e.getSalary()));
		Employee emp = repo.save(e);
		return emp.getId();
	}

	private double calulateDa(double da) {
		return da * 6 / 100;
	}

	private double calculateHra(double salary) {
		return salary * 20 / 100;
	}

	@Override
	public List<Employee> getAllEmployees() {
		return repo.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		repo.deleteById(id);
	}

	@Override
	public Employee findById(Integer id) {
		Optional<Employee> emp = repo.findById(id);
		if (emp.isPresent()) {
			return emp.get();
		}
		return null;
	}

	@Override
	public void updateEmployeeById(Employee e) {
		Employee emp = new Employee();
		if (repo.existsById(e.getId())) {
			emp.setHra(calculateHra(e.getSalary()));
			emp.setDa(calulateDa(e.getSalary()));
			repo.save(emp);
		}

	}

}
