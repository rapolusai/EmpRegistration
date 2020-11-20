package com.rsp.main;

import org.slf4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EmpRegistrationApplication {
	private static Logger log=org.slf4j.LoggerFactory.getLogger(EmpRegistrationApplication.class);
	public static void main(String[] args) {
		log.info("Application started");
		SpringApplication.run(EmpRegistrationApplication.class, args);
	}

}
