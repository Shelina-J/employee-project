package com.airbnb.employeeproject.dto;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airbnb.employeeproject.beans.Employee;
import com.airbnb.employeeproject.dao.EmployeeDao;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	public EmployeeDto saveEmployee(Employee employee) {
		EmployeeDto employeeDto = new EmployeeDto();
		employeeDto.setName(employee.getName());
		employeeDto.setEmailId(employee.getEmailId());
		Double sal= Double.parseDouble(employee.getSalary());
		employeeDto.setSalary(sal);
		LocalDate emDate= LocalDate.parse(employee.getDob());
		employeeDto.setDob(emDate);
		employeeDto.setAge(employee.getAge());
		employeeDto.setType(employee.getType());
		
		return employeeDao.insertEmployee(employeeDto);
	}

	public List<EmployeeDto> getAllEmployees() {
		return employeeDao.getAllEmployees();
	}

	public EmployeeDto findEmployee(int id) {
		return employeeDao.findEmployee(id);
	}

	public EmployeeDto updateEmployee(int id, Employee employee) {
		EmployeeDto employeeDto= new EmployeeDto(); 
		employeeDto.setAge(id);
		employeeDto.setName(employee.getName());
		employeeDto.setEmailId(employee.getEmailId());
		LocalDate date=LocalDate.parse(employee.getDob());
		employeeDto.setDob(date);
		Double sal= Double.parseDouble(employee.getSalary());
		employeeDto.setSalary(sal);
		employeeDto.setType(employee.getType());
		return employeeDao.updateEmployee(employeeDto);
	}

	public EmployeeDto deleteEmployee(int id) {
		EmployeeDto employeeDto=employeeDao.findEmployee(id);
		System.out.println("found employee "+employeeDto);
		return employeeDao.deleteEmployee(employeeDto);
	}

	

}
