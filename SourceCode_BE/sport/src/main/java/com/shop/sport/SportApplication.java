package com.shop.sport;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(title = "Nho Nam API", version = "2.0", description = "Nho Nam Trying"))
@CrossOrigin(origins = "http://**")
public class SportApplication {

	public static void main(String[] args) {


		SpringApplication.run(SportApplication.class, args);
		System.out.println("===== Swagger api By Nho Nam ======");
		System.err.println("http://localhost:8080/swagger-ui/index.html");
		System.err.println("/v3/api-docs");
		System.out.println("===== Swagger api By Nho Nam ======");
	}

}
