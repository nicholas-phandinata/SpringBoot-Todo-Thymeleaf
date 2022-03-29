package com.maybank.springboot.todo.thymeleaf.service;

import com.maybank.springboot.todo.thymeleaf.model.User;
import com.maybank.springboot.todo.thymeleaf.web.dto.UserRegistrationDto;

public interface UserService {
	User save(UserRegistrationDto registrationDto);
}
