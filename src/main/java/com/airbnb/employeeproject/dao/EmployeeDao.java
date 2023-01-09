package com.airbnb.employeeproject.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.airbnb.employeeproject.dto.EmployeeDto;

@Repository
public class EmployeeDao {
	
	@Autowired
	private EntityManagerFactory factory;
	
	public EmployeeDto insertEmployee(EmployeeDto employeeDto) {
		EntityManager entityManager = factory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		try {
			transaction.begin();
			entityManager.persist(employeeDto);
			transaction.commit();
			return employeeDto;
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			return employeeDto;
		}
	}

	public List<EmployeeDto> getAllEmployees() {
		EntityManager entityManager = factory.createEntityManager();
		String ql="FROM EmployeeDto";
		Query query= entityManager.createQuery(ql);
		return query.getResultList();
	}

	public EmployeeDto findEmployee(int id) {
		EntityManager entityManager = factory.createEntityManager();
		
		return entityManager.find(EmployeeDto.class, id);
	}

	public EmployeeDto updateEmployee(EmployeeDto employeeDto) {
		EntityManager entityManager= factory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		try {
			transaction.begin();
			EmployeeDto emp=entityManager.merge(employeeDto);
			transaction.commit();
			return emp;
		}catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			return null;
		}
	}

	public EmployeeDto deleteEmployee(EmployeeDto employeeDto) {
		EntityManager entityManager= factory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();
		
		try {
			transaction.begin();
			EmployeeDto emp=entityManager.merge(employeeDto);
			entityManager.remove(emp);
			transaction.commit();
			return emp;
		}catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			return employeeDto;
		}
	}

	

}
