package com.maybank.springboot.todo.thymeleaf.web.dto;

import lombok.Data;

@Data
public class UserRegistrationDto {
	private String firstname;
	private String lastname;
	private String username;
	private String password;
}
