package com.maybank.springboot.todo.thymeleaf.service;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maybank.springboot.todo.thymeleaf.model.Role;
import com.maybank.springboot.todo.thymeleaf.model.User;
import com.maybank.springboot.todo.thymeleaf.model.UserRepository;
import com.maybank.springboot.todo.thymeleaf.web.dto.UserRegistrationDto;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User save(UserRegistrationDto registrationDto) {
		// TODO Auto-generated method stub
		User user = new User(registrationDto.getFirstname(),
				registrationDto.getLastname(),
				registrationDto.getUsername(),
				registrationDto.getPassword(),
				Arrays.asList(new Role("Role_User")));
		
		return userRepository.save(user);
	}

}
