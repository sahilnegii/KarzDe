package com.lti.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.lti.Dto.AdminLoginDto;
import com.lti.Dto.ApplicationDto;
import com.lti.Dto.CustomerDto;
import com.lti.Dto.LoginDto;
import com.lti.exception.CustomerServiceException;
import com.lti.model.Admin;
import com.lti.model.Application;
import com.lti.model.Customer;
import com.lti.service.ServiceInterface;
import com.lti.status.AdminLoginStatus;
import com.lti.status.LoginStatus;
import com.lti.status.RegisterStatus;
import com.lti.status.Status;
import com.lti.status.Status.StatusType;

@RestController
@CrossOrigin
public class ControllerClass {

	@Autowired
	ServiceInterface userService;
	
	@PostMapping("/registerUser")
	public Status addUser(@RequestBody CustomerDto user) 
	{
		try 
		{
			int id = userService.registerUser(user);
			RegisterStatus status = new RegisterStatus();
			status.setCustomerId(id);
			status.setStatus(StatusType.SUCCESS);
			status.setMessage("Registration successful");
			System.out.println("Registration successful");
			System.out.println();
			return status;

		} 
		catch (CustomerServiceException e) 
		{
			Status status = new Status();
			status.setStatus(StatusType.FAILURE);
			status.setMessage(e.getMessage());
			return status;
		}

	}

	@PostMapping("/adminLogin")
	public Status adminLogin(@RequestBody AdminLoginDto loginDto) {
		try {
			Admin admin = userService.adminLogin(loginDto.getAdminId(), loginDto.getPassword());
			AdminLoginStatus loginStatus = new AdminLoginStatus();
			loginStatus.setMessage("Login Successful!");
			loginStatus.setAdminId(admin.getAdminId());
			loginStatus.setAdminName(admin.getAdminFirstName());
			loginStatus.setStatus(StatusType.SUCCESS);
			return loginStatus;
		} catch (CustomerServiceException e) {
			LoginStatus loginStatus = new LoginStatus();
			loginStatus.setMessage(e.getMessage());
			loginStatus.setStatus(StatusType.FAILURE);
			return loginStatus;
		}
	}

	@PostMapping("/updateUser")
	public boolean updateUser(@RequestBody Customer user) {
		System.out.println(user.getCustomerId());
		return userService.updateUser(user);
	}

	@PostMapping("/loginUser")
	public LoginStatus isValidUser(@RequestBody LoginDto loginDto) 
	{
		try 
		{
			Customer customer = userService.isValidUser(loginDto.getCustomerId(), loginDto.getCustomerPassword());
			LoginStatus loginStatus = new LoginStatus();
			loginStatus.setMessage("Login Successful");
			loginStatus.setCustomerFirstName(customer.getCustomerFirstName());
			loginStatus.setCustomerLastName(customer.getCustomerLastName());
			loginStatus.setCustomerEmail(customer.getCustomerEmail());
			loginStatus.setStatus(StatusType.SUCCESS);
			loginStatus.setCustomerId(customer.getCustomerId());
			return loginStatus;
		} 
		catch (CustomerServiceException e) 
		{
			LoginStatus loginStatus = new LoginStatus();
			loginStatus.setMessage(e.getMessage());
			loginStatus.setStatus(StatusType.FAILURE);

			return loginStatus;
		}
	}

	@PostMapping("/applyLoan")
	public int addloanApplication(@RequestBody ApplicationDto application) 
	{
		int appId = userService.addLoanApplication(application);
		System.out.println("APPLICATION ID IS: "+appId);
		return appId;
	}

	@PostMapping("/findAUser")
	public Customer findAUSer(@RequestBody Integer userId) {
		return userService.findAUser(userId);
	}

	@PostMapping("/findAAdmin")
	public Admin findAAdminById(@RequestBody Integer adminId) {
		return userService.findAAdminById(adminId);
	}

	@GetMapping("/viewAllCustomers")
	public List<Customer> viewAllUsers() {
		return userService.viewAllUsers();
	}

	public boolean updateAdmin(Admin admin) {

		return userService.updateAdmin(admin);
	}

	@GetMapping("/viewAllApplications") //FOR ADMIN
	public List<Application> viewAllApplications() 
	{
		
		List<Application> applications = userService.viewAllApplications();
		Customer c = new Customer();
		for(Application a:applications)
		{
			System.out.println("appId is: "+a.getApplicationId());
			c = a.getCustomer();
			System.out.println("customer id is: "+c.getCustomerId());
			System.out.println();
		}
		return applications;
	}

	@PutMapping("/verifyApplication") 
	public void verifyApplication(Application application) 
	{
		userService.verifyApplication(application);
	}
	
	@PutMapping("/rejectApplication") 
	public void rejectApplication(Application application) 
	{
		userService.rejectApplication(application);
	}
	
	@PostMapping("/trackStatusByApplicationId")
	public String trackStatusByApplicationId(@RequestBody int applicationId)
	{
		return userService.trackStatusByApplicationId(applicationId);
	}
	
	@PostMapping("/viewApplication")
	public Application findByApplicationId(@RequestBody Integer id) {
		return userService.findByApplicationId(id);
	}
}
