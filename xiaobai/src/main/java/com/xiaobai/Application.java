package com.xiaobai;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;



@SpringBootApplication
public class Application extends SpringBootServletInitializer {

	
	 @Override
	    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
	       return builder.sources(Application.class);
	   }
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 SpringApplication.run(Application.class, args);
	}

}
