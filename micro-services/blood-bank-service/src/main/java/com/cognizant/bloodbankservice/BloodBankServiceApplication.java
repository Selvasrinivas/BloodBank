package com.cognizant.bloodbankservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class BloodBankServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(BloodBankServiceApplication.class, args);
	}

}
