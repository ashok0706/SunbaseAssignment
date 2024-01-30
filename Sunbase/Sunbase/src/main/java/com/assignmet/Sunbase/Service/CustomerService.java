package com.assignmet.Sunbase.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assignmet.Sunbase.Entity.Customer;
import com.assignmet.Sunbase.Repository.CustomerRepo;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepo customerRepo;

	public void saveAndUpadteCustomer(Customer customer) {
			customerRepo.save(customer);	
	}

	public List<Customer> getCustomerAll() {
		return customerRepo.findAll();
	}

	public Optional<Customer> getCustomer(int id) {
	   Optional<Customer> cutomer=  customerRepo.findById(id);
	 return cutomer ;
		 
	}

	public Optional<Customer> deleteCustomer(int id) {
		Optional<Customer> customer = customerRepo.findById(id);
		if (!customer.isEmpty()) {
			customerRepo.deleteById(id);
		}
		return customer;
	}

}
