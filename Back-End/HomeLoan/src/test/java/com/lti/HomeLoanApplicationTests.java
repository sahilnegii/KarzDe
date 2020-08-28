
package com.lti;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.lti.repo.RepositoryInterface;

@SpringBootTest
class HomeLoanApplicationTests {


	@SuppressWarnings("unused")
	@Autowired
	private RepositoryInterface repo;
	
	@Test
	void loginCustomer()
	{
		
	}
}
	/*@Test
	void registerCustomer() {
		
		Customer customer = new Customer();
		customer.setCustomerCity("chd");
		customer.setCustomerdateOfBirth(LocalDate.of(1999, 07, 17));
		customer.setCustomerEmail("sahilnegi@lti");
		customer.setCustomerEmploymentType("Salaried");
		customer.setCustomerFirstName("Sahil");
		customer.setCustomerLastName("Negi");
		customer.setCustomerMobileNumber("9676543210");
		customer.setCustomerPassword("Sahil@123");
		
		repo.registerUser(customer);
	}
	

	
	
	@Test
	void registerAdmin() {
		Admin admin = new Admin();
		admin.setAdminFirstName("Vishal");
		admin.setAdminLastName("Sir");
		admin.setAdminEmail("vishal@gmail.com");
		admin.setAdminPassword("vishal@123");
		admin.setAdminContact("098765321");
		admin.setDateOfBirth(LocalDate.of(1982, 02, 01));
		admin.setGender("Male");
		
		System.out.println(repo.registerAdmin(admin));
	}
	
	
	@Test
	void adminLogin() {
		System.out.println(repo.adminLogin(20201, "s@s.com"));
		
	}

	@Test
	void addApplication() {
		
		Application application = new Application();
//		application.setAadharNumber("9233756839999");
//		application.setAddress("25 Rajpur dehradun");
//		application.setDownPayment(30000);
//		application.setGender("Female");
//		application.setIncome(50000);
//		application.setLoanAmount(1000000);
//		application.setNationality("Indian");
//		application.setOrganisation("LTI");
//		application.setRetirementAge(60);
//		application.setTenure(10);
//		application.setUserPAN("ABCD1234");
		
		application.setMaritialStatus("UnMarried");
		application.setNoOfDependents(3);
		application.setDepandentMonthlyExpenses(6600);
		application.setPersonalExpenses(5000);
		application.setExistingLoan("NO");

		application.setMaritialStatus("Married");
		application.setNoOfDependents(1);
		application.setDepandentMonthlyExpenses(100000);
		application.setPersonalExpenses(100000);
		application.setExistingLoan("YES");
		application.setEmiExistingLoan(2345);
		application.setMaxLoanAmount(234);
		application.setGender("Male");
		application.setAddress("ABC");
		application.setUserPAN("BANPS");
		application.setAadharNumber("12345");
		application.setNationality("Indian");
		application.setRetirementAge(55);
		application.setOrganisation("LTI");
		application.setIncome(36000);
		application.setLoanAmount(1500000);
		application.setTenure(12);
		application.setDownPayment(20000);
		
		
		
		System.out.println(repo.addLoanApplication(application));

		
		
		
	}
	
	@Test
	void changeStatus() {
		Application application = new Application();
		application.setApplicationId(20262);
		application.setMaritialStatus("Married");
		application.setDownPayment(350000);
		System.out.println(repo.changeStatus(application));
	}
	
	@Test
	void userlogin() {
		
		System.out.println(repo.isValidUser(90502, "Sahil@123"));
		
	}
	
	@Test
	void viewAllUsers() {
		
		System.out.println(repo.viewAllUsers());
	}
	
	@Test
	void findAUser() {
		
		System.out.println(repo.findAUser(90501));
	}
	
}
*/
