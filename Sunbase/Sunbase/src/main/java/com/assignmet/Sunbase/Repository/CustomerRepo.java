package com.assignmet.Sunbase.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.assignmet.Sunbase.Entity.Customer;

@Repository
public interface CustomerRepo extends JpaRepository<Customer, Integer>{

	Customer findByEmail(String email);

	List<Customer> findAllByFirstName(String key);

	List<Customer> findAllByCity(String key);

	List<Customer> findAllByEmail(String key);

	List<Customer> findAllByPhone(String key);

}
