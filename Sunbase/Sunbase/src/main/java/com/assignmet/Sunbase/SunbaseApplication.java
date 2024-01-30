package com.assignmet.Sunbase;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;



@SpringBootApplication
//@OpenAPIDefinition (
//		info = @Info(
//				title = "SunBase",
//				version = "1.0.0"
//				),
//		servers = @Server(
//				url = "http://localhost:8080",
//				description = "Assignment")
//		
//		)
public class SunbaseApplication {

	public static void main(String[] args) {
		SpringApplication.run(SunbaseApplication.class, args);
	}

}
