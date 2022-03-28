package com.maybank.springboot.todo.thymeleaf.service;

import java.util.List;

import com.maybank.springboot.todo.thymeleaf.model.Todo;

public interface TodoService {
	List<Todo> listAll();
	
	Todo getTodoById(int id);
	
	Todo saveTodo(Todo todo);
	
	String deleteTodo(int id);
}
