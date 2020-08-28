package com.lti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.lti.Dto.ApplicationDto;
import com.lti.Dto.CustomerDto;
import com.lti.exception.CustomerServiceException;
import com.lti.model.Admin;
import com.lti.model.Application;
import com.lti.model.Customer;
import com.lti.repo.RepositoryInterface;

@Service
public class ServiceClass implements ServiceInterface {

	@Autowired
	private RepositoryInterface repo;

	@Override
	public int registerUser(CustomerDto user) {
		
		Customer user1 = new Customer();
		//user1.setCustomerId(user.getCustomerId());
		user1.setCustomerFirstName(user.getCustomerFirstName());
		user1.setCustomerLastName(user.getCustomerLastName());
		user1.setCustomerEmail(user.getCustomerEmail());
		user1.setCustomerPassword(user.getCustomerPassword());
		user1.setCustomerMobileNumber(user.getCustomerMobileNumber());
		user1.setCustomerCity(user.getCustomerCity());
		user1.setCustomerEmploymentType(user.getCustomerEmploymentType());
		
		int id = repo.registerUser(user1);
		return id;
		
	}

	@Override
	public Customer isValidUser(int userId, String userPassword) 
	{
		try 
		{
			if (!repo.isCustomerPresent(userId))
				throw new CustomerServiceException("User not found");

			int id = repo.isValidUser(userId, userPassword); //getting id of valid user
			Customer customer = repo.findById(id);
			return customer;
		} 
		catch (EmptyResultDataAccessException e) //when userid is there but password is incorrect
		{
			throw new CustomerServiceException("Incorrect credentials");
		}
	}

	@Override
	public boolean updateUser(Customer user) 
	{
		return repo.updateUser(user);
	}

	@Override
	public int addLoanApplication(ApplicationDto application) 
	{
		  Customer customer = new Customer(); 
		  Application app = new Application();
		  
		  int custId = application.getCustomerId();
		  
		  customer.setCustomerId(custId);
		  app.setCustomer(customer); //customer id set for this application
		  app.setAadharCard(application.getAadharCard());
		  app.setAadharNumber(application.getAadharNumber());
		  app.setAddress(application.getAddress());
		  app.setGender(application.getGender());
		  app.setIncome(application.getIncome());
		  app.setLetterOfAgreement(application.getLetterOfAgreement());
		  app.setLoanAmount(application.getLoanAmount());
		  app.setLoanStatus(application.getLoanStatus());
		  app.setNationality(application.getNationality());
		  app.setOrganisation(application.getOrganisation());
	
		return repo.addLoanApplication(app);
	}
	
	@SuppressWarnings("unused")
	@Override
	public Admin adminLogin(int adminId, String adminPassword) {
		try {
			if (!repo.isAdminPresent(adminId))
				throw new CustomerServiceException("Admin not Present in Database.");
			int id = (int) repo.adminLogin(adminId, adminPassword);
			Admin admin = repo.findAdminById(adminId);
			return admin;
		} catch (EmptyResultDataAccessException e) {
			throw new CustomerServiceException("Incorrect username/password");

		}
	}

	@Override
	public List<Customer> viewAllUsers() {
		return repo.viewAllUsers();
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		if(repo.isAdminPresent(admin.getAdminId()))
			return repo.updateAdmin(admin);
		
	return false;
	}

	@Override
	public Admin findAAdminById(int adminId) {
		return repo.findAdminById(adminId);
	}
	
	@Override
	public Customer findAUser(int userId) {
		return repo.findAUser(userId);
	}

	@Override
	public List<Application> viewAllApplications() 
	{
		List<Application> applications = repo.viewAllApplications();
		
		
		return applications;
	}

	@Override
	public boolean changeStatus(Application application) 
	{
		return repo.changeStatus(application);
	}

	@Override
	public Application findByApplicationId(int id) {
		return repo.findByApplicationId(id);
	}

	@Override
	public void verifyApplication(Application application) 
	{
		int appId = repo.addLoanApplication(application);
		//System.out.println(appId);
		repo.verifyApplication(appId);	
	}

	@Override
	public void rejectApplication(Application application) 
	{
		int appId = repo.addLoanApplication(application);
		repo.rejectApplication(appId);
		
	}
	@Override
	public String trackStatusByApplicationId(int id)
	{
		String loanStatus = repo.trackStatusByApplicationId(id);
		System.out.println(loanStatus);
		return loanStatus;
	}

}
