package com.lti.service;

import java.util.List;

import com.lti.Dto.ApplicationDto;
import com.lti.Dto.CustomerDto;
import com.lti.model.Admin;
import com.lti.model.Application;
import com.lti.model.Customer;

public interface ServiceInterface {

	//User
	public int registerUser(CustomerDto user);

	public Customer isValidUser(int userId, String userPassword);

	public boolean updateUser(Customer user);

	public int addLoanApplication(ApplicationDto application);

	//Admin
	public Admin adminLogin(int employeeId, String adminPassword);

	public List<Customer> viewAllUsers();

	public Admin findAAdminById(int adminId);

	public boolean updateAdmin(Admin admin);

	public Customer findAUser(int userId);

	public List<Application> viewAllApplications();

	public boolean changeStatus(Application application);

	public Application findByApplicationId(int id);

	public void verifyApplication(Application application);
	
	public void rejectApplication(Application application);

	public String trackStatusByApplicationId(int id);
}
