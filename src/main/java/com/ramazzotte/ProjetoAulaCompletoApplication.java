package com.ramazzotte;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan(basePackages = "com.ramazzotte")
@SpringBootApplication
public class ProjetoAulaCompletoApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjetoAulaCompletoApplication.class, args);
	}

}
