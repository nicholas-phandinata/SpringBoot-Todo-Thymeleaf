package com.maybank.springboot.todo.thymeleaf.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TodoRepository extends JpaRepository<Todo, Integer>{
	
	@Query("SELECT t FROM todos t WHERE CONCAT(t.user, ' ', t.description) LIKE %?1%")
	public List<Todo> search(String keyword);
}
