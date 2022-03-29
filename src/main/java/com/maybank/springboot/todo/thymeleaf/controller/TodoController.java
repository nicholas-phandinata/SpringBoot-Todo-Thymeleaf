package com.maybank.springboot.todo.thymeleaf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maybank.springboot.todo.thymeleaf.model.Todo;
import com.maybank.springboot.todo.thymeleaf.service.TodoService;

@Controller
public class TodoController {
	
	@Autowired
	TodoService todoService;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/")
	public String listAll(Model model) {
		model.addAttribute("todos", todoService.listAll());
		return "index";
	}
	
	@RequestMapping("/add-todo")
	public String addTodo(Model model) {
		model.addAttribute("todo", new Todo());
		return "addTodo";
	}
	
	@RequestMapping("save")
	public String save(@ModelAttribute Todo todo) {
		System.out.println("Form Data: " + todo);
		todoService.saveTodo(todo);
		return "redirect:";
	}
	
	@RequestMapping("/edit/{id}")
	public String edit(Model model, @PathVariable int id) {
		Todo todo = todoService.getTodoById(id);
		System.out.println("Edit Data: " + todo);
		model.addAttribute("todo", todo);
		return "editTodo";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		System.out.println("Delete ID: " + id);
		todoService.deleteTodo(id);
		return "redirect:../";
	}
	
}
