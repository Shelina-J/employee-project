package com.airbnb.employeeproject.beans;

public class Employee {

	private String name; 
	private String emailId; 
	private String dob; 
	private int age;
	private String salary; 
	private String type;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Employee [name=" + name + ", emailId=" + emailId + ", dob=" + dob + ", age=" + age + ", salary="
				+ salary + ", type=" + type + "]";
	}
		
	
	 
	
	
}
