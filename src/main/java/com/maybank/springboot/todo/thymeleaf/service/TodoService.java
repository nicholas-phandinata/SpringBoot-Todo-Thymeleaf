package com.maybank.springboot.todo.thymeleaf.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.maybank.springboot.todo.thymeleaf.model.Todo;

public interface TodoService {
	List<Todo> listAll();
	
	List<Todo> search(String keyword);
	
	Todo getTodoById(int id);
	
	Todo saveTodo(Todo todo);
	
	String deleteTodo(int id);
	
	Page<Todo> pageListAll(int pageNumber, String sortField, String sortDir);
}
