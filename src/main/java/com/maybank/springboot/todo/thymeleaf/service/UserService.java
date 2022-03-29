package com.maybank.springboot.todo.thymeleaf.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.maybank.springboot.todo.thymeleaf.model.User;
import com.maybank.springboot.todo.thymeleaf.web.dto.UserRegistrationDto;

public interface UserService extends UserDetailsService{
	User save(UserRegistrationDto registrationDto);
}
