package com.rsp.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rsp.main.model.Employee;
import com.rsp.main.service.IEmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private IEmployeeService service;

	@GetMapping("/registration")
	public String home() {
		return "Registration";
	}

	@PostMapping("/save")
	public String saveEmployee(@ModelAttribute Employee employee, Model model) {
		Employee emp;// = new Employee();
		if (employee != null) {
			service.saveEmployee(employee);
			String message = "Employee '" + employee.getName() + "' saved and total employees are "+service.getAllEmployees().size();
			model.addAttribute("msg", message);
			return "Registration";
		} else {
			return null;
		}

	}

	@GetMapping("/all")
	public String all(Model model) {
		List<Employee> employees = service.getAllEmployees();
		model.addAttribute("employees", employees);
		return "AllEmployees";
	}

	@GetMapping("/delete")
	public String deleteById(@RequestParam Integer id, Model model) {
		service.deleteById(id);

		List<Employee> employees = service.getAllEmployees();
		model.addAttribute("employees", employees);
		return "redirect:all";
	}

	@GetMapping("/edit")
	public String editEmployee(@RequestParam("id") Integer id, @ModelAttribute Employee employee, Model model) {
		Employee emp = service.findById(id);
		employee.setId(emp.getId());
		employee.setName(emp.getName());
		employee.setEmail(emp.getEmail());
		employee.setSalary(emp.getSalary());
		employee.setDept(emp.getDept());
		employee.setHra(emp.getHra());
		employee.setDa(emp.getDa());
		model.addAttribute("emp", employee);
		return "EmployeeEdit";
	}

	@PostMapping("/update")
	public String updateById(@ModelAttribute Employee employee) {
		service.saveEmployee(employee);
		return "redirect:all";
	}

}
