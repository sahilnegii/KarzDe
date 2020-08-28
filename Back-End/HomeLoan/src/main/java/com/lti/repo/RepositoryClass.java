package com.lti.repo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.lti.model.Admin;
import com.lti.model.Application;
import com.lti.model.Customer;

@Repository
public class RepositoryClass implements RepositoryInterface {

	@PersistenceContext
	EntityManager em;

	@Override
	@Transactional
	public int registerUser(Customer user) {
		em.persist(user);
		return user.getCustomerId();
	}
	
	@Override
	public boolean isCustomerPresent(int userId) 
	{
		return (Long) em.createQuery("select count(c.customerId) from Customer c where c.customerId =: id")
				.setParameter("id", userId).getSingleResult() == 1 ? true : false;
	}

	@Override
	public boolean doesEmailExist(String email) {
		return (Long) em.createQuery("select count(c.customerEmail) from Customer c where c.customerEmail =: eml")
				.setParameter("eml", email).getSingleResult() == 1 ? true : false;
	}

	@Override
	public Customer findById(int id) 
	{
		return em.find(Customer.class, id);
	}

	@Override
	public int isValidUser(int userId, String userPassword) {
		return (Integer) em
				.createQuery("select c.id from Customer c where c.customerId =: id and c.customerPassword =:psw")
				.setParameter("id", userId).setParameter("psw", userPassword).getSingleResult();
	}

	@Override
	@Transactional
	public boolean updateUser(Customer user) {
		System.out.println(user.getCustomerId());
		Customer u = em.find(Customer.class, user.getCustomerId());

		if (u != null) {

			em.merge(user);
			System.out.println(user);
			return true;
		}
		return false;
	}

	@Override
	@Transactional
	public int addLoanApplication(Application application) 
	{

		Application a = em.merge(application);
		return a.getApplicationId();
	}

	@Override
	@Transactional
	public int registerAdmin(Admin admin) {
		Admin ad = em.merge(admin);
		return ad.getAdminId();
	}

	@Override
	public long adminLogin(int employeeId, String adminPassword) {
		return (Integer) em.createQuery("select a.id from Admin a where a.adminId=:id and a.adminPassword=:pw")
				.setParameter("id", employeeId).setParameter("pw", adminPassword).getSingleResult();
	}

	@Override
	public boolean isAdminPresent(int adminId) {
		return (Long) em.createQuery("select count(a.id) from Admin a where a.adminId=:id").setParameter("id", adminId)
				.getSingleResult() == 1 ? true : false;
	}

	@Override
	public Admin findAdminById(int adminId) {
		return em.find(Admin.class, adminId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> viewAllUsers() {
		String sql = "select cust from Customer cust order by cust.customerId";
		Query qry = em.createQuery(sql);
		List<Customer> users = qry.getResultList();// typed query
		return users;
	}

	@Override
	@Transactional
	public boolean updateAdmin(Admin admin) {
		Admin ad = em.find(Admin.class, admin.getAdminId());
		if (ad != null) {
			em.merge(ad);
			return true;
		}
		return false;
	}

	@Override
	public Customer findAUser(int customerId) {
		Customer user = em.find(Customer.class, customerId);
		System.out.println(user);
		return user;
	}

	@Override
	@Transactional
	public boolean changeStatus(Application application) 
	{ 
		Application app = em.find(Application.class, application.getApplicationId());
		
		if (app != null) 
		{
			em.merge(application);
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Application> viewAllApplications() 
	{
		String sql = "select app from Application app order by app.applicationId";
		Query qry = em.createQuery(sql);
		
		List<Application> application = qry.getResultList();
		return application;
	}
	
	@Override
	public Application findByApplicationId(int id) {
		Application app = em.find(Application.class, id);
		return app;
	}
	
	@Transactional
	@Override
	public void verifyApplication(int applicationId) 
	{
		 em.createQuery("update Application a set a.loanStatus='verified' where a.applicationId=:id")
				.setParameter("id", applicationId).executeUpdate();
		 
		 System.out.println("verified");
		 System.out.println(applicationId);
	}
	
	@Transactional
	@Override
	public void rejectApplication(int applicationId) 
	{
		em.createNativeQuery("update Application set loan_status='rejected' where application_id="+applicationId).executeUpdate();
	}
	
	@Override
	public String trackStatusByApplicationId(int id) 
	{
		String loanStatus = (String)em.createNativeQuery("select loan_status from Application where application_id="+id).getSingleResult();
		return loanStatus;
		
	}

}
