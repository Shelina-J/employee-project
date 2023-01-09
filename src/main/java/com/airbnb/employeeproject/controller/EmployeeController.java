package com.airbnb.employeeproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.airbnb.employeeproject.beans.Employee;
import com.airbnb.employeeproject.dto.EmployeeDto;
import com.airbnb.employeeproject.dto.EmployeeService;

import net.bytebuddy.matcher.ModifierMatcher.Mode;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/index")
	public ModelAndView getHomePage(ModelAndView modelAndView) {
		modelAndView.setViewName("home");
		return modelAndView;
	}
	
	@GetMapping("/insert")
	public ModelAndView saveEmployee(ModelAndView modelAndView) {
		modelAndView.setViewName("add-employee-form");
		return modelAndView;
	}
	
	@PostMapping("/add-employee")
	public String addEmployees(Employee employee,Model model, ModelAndView modelAndView) {
		EmployeeDto employeeDto = employeeService.saveEmployee(employee);
		System.out.println(employeeDto);
		if (employeeDto!=null) {
			model.addAttribute("msg", employeeDto);
		}else {
			model.addAttribute("msg", "No records added");
		}
		return ("display-home");
	}
	
	@GetMapping("/view-all")
	public ModelAndView viewAllEmployees(Model model,ModelAndView modelAndView) {
		List<EmployeeDto> allEmployees= employeeService.getAllEmployees();
		System.out.println(allEmployees);
		if (allEmployees.isEmpty()) {
			model.addAttribute("msg", "No data found");
			modelAndView.setViewName("display-home");
		}else {
			model.addAttribute("employees", allEmployees);
			modelAndView.setViewName("display-all");
		}
		
		return modelAndView;
	}
	
	
	public ModelAndView findEmployee(@RequestParam("id")int id,ModelAndView modelAndView,Model model) {
		EmployeeDto employeeDto=employeeService.findEmployee(id);
		if (employeeDto!=null) {
			model.addAttribute("msg", employeeDto);
			modelAndView.setViewName("display-home");
		}else {
			model.addAttribute("msg", "No records added");
			modelAndView.setViewName("display-home");
		}
		return modelAndView;
	}
	
	@GetMapping("/edit")
	public ModelAndView editEmployee(@RequestParam("id") int id,Model model,ModelAndView modelAndView) {
		EmployeeDto employeeDto=employeeService.findEmployee(id);
		if (employeeDto!=null) {
			model.addAttribute("emp", employeeDto);
			modelAndView.setViewName("edit-employee-page");
		}else {
			model.addAttribute("msg", "No records found");
			modelAndView.setViewName("view-all");
		}
		return modelAndView;
	}
	
	@PostMapping("/update-employee-page")
	public String updateEmployee(@RequestParam("id") int id, Employee employee) {
		System.out.println(id);
		EmployeeDto employeeDto=employeeService.updateEmployee(id,employee);
		if (employeeDto!=null) {
			return "redirect:/view-all";
		}else
			return "forward:/view-all";
	}
	
	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("id") int id) {
		EmployeeDto employeeDto= employeeService.deleteEmployee(id);
		System.out.println(employeeDto);
		return "forward:/view-all";
	}
	
}

