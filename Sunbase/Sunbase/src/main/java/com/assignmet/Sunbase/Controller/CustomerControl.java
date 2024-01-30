package com.assignmet.Sunbase.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.assignmet.Sunbase.Entity.Customer;
import com.assignmet.Sunbase.Service.CustomerService;

//import ch.qos.logback.core.model.Model;

@Controller
public class CustomerControl {

	@Autowired
	private CustomerService customerService;

	
	@GetMapping("/Login")
	public String login() {
		return "index";
	}
	
	
	@PostMapping(value = "/customerlist")
//	@ResponseBody
	public String login(@RequestParam String usermail, @RequestParam String password, Model model) {
		
		if(usermail.equals("ashok") && password.equals("12345")) {
			return "CustomerList";
		}			
		   model.addAttribute("error" ,"You have entered Wrong email and password");
		 return "index";
		
	}
	
	@GetMapping("/add")	
	public String form() {
		return "CustomerDetails";
	}

	@PostMapping("/add")
//	@ResponseBody
	public String addCustomer(@ModelAttribute Customer customer, Model model) {
		
		 customerService.saveAndUpadteCustomer(customer);
		 List<Customer> ls = customerService.getCustomerAll();		 
		 model.addAllAttributes(ls);
		return "CustomerList";
	}
	

	@GetMapping("/getAll")
	public List<Customer> getCustomerAll() {
		return customerService.getCustomerAll();
		
	}

	@GetMapping("/getById")
	public ResponseEntity<?> getCustomer(@RequestParam int id) {
		Optional<Customer> customer = customerService.getCustomer(id);

		if (customer.isEmpty()) {
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body("No Customer Exist");
		}
		return ResponseEntity.ok().body(customer);
	}

	@DeleteMapping("/delete")
	public String deleteCustomer(@RequestParam int id) {

	Optional<Customer> customer = customerService.deleteCustomer(id);
		if (customer.isEmpty()) {
			return "No Data exits With Id";
		}
		return "Succefully Deleted";
		
	}

//	@PutMapping("/update")
//	public String updateCustomer() {
//		return customerService.addCustomer();
//	}

}
