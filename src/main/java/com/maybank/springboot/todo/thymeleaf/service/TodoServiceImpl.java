package com.maybank.springboot.todo.thymeleaf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maybank.springboot.todo.thymeleaf.model.Todo;
import com.maybank.springboot.todo.thymeleaf.model.TodoRepository;

@Service
public class TodoServiceImpl implements TodoService{
	
	@Autowired
	TodoRepository repo;
	@Override
	public List<Todo> listAll() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}
	@Override
	public Todo getTodoById(int id) {
		// TODO Auto-generated method stub
		return repo.findById(id).orElse(null);
	}
	@Override
	public Todo saveTodo(Todo todo) {
		// TODO Auto-generated method stub
		return repo.save(todo);
	}
	@Override
	public String deleteTodo(int id) {
		// TODO Auto-generated method stub
		repo.deleteById(id);
		return "Todo Deleted Successfully!";
	}

}
