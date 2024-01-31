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
import com.assignmet.Sunbase.Repository.CustomerRepo;
import com.assignmet.Sunbase.Service.CustomerService;

//import ch.qos.logback.core.model.Model;

@Controller
//@RestController
public class CustomerControl {

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private CustomerRepo customerRepo;

	
	@GetMapping("/Login")
	public String login() {
		return "index";
	}
	
	
	@PostMapping(value = "/customerlist")
//	@ResponseBody
	public String login(@RequestParam String usermail, @RequestParam String password, Model model) {
		
		if(usermail.equals("ashok") && password.equals("12345")) {
			List<Customer> ls =  customerService.getCustomerAll();
//			Optional<Customer> c = customerRepo.findById(55);
			model.addAttribute("List", ls);
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
		 model.addAttribute("List", ls);
		return "CustomerList";
	}
	

	@GetMapping("/getAll")
	public String getCustomerAll(@RequestParam String type, @RequestParam String key, Model model) {
		List<Customer> ls = null;
		System.out.print(type + " "+ key);
//		String search = "";
		if(type.equals("firstName")) {
			ls = customerRepo.findAllByFirstName(key);
		}else if(type.equals("city")) {
			ls = customerRepo.findAllByCity(key);
		}else if(type.equals("email")) {
			ls = customerRepo.findAllByEmail(key);
		}else if(type.equals("phone")) {
			ls = customerRepo.findAllByPhone(key);
		}  
//		Optional<Customer> c = customerRepo.findById(55);
		model.addAttribute("List", ls);
		return "CustomerList";
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
	public String deleteCustomer(@RequestParam String fName) {

		System.out.print(fName);
		
//	Optional<Customer> customer = customerService.deleteCustomer();
//		if (customer.isEmpty()) {
//			return "No Data exits With Id";
//		}
		return "CustomerList";
		
	}

//	@PutMapping("/update")
//	public String updateCustomer() {
//		return customerService.addCustomer();
//	}

}
