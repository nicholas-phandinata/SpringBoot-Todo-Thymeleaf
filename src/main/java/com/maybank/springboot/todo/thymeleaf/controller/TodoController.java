package com.maybank.springboot.todo.thymeleaf.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lowagie.text.DocumentException;
import com.maybank.springboot.todo.thymeleaf.model.Todo;
import com.maybank.springboot.todo.thymeleaf.model.UserPDFExporter;
import com.maybank.springboot.todo.thymeleaf.service.TodoService;

@Controller
public class TodoController {
	
	@Autowired
	TodoService todoService;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/")
	public String listAll(Model model, @Param("keyword") String keyword) {
		return listByPage(model, keyword, 1, "id", "asc");
	}
	
	@GetMapping("/page/{pageNumber}")
	public String listByPage(Model model, @Param("keyword") String keyword, 
			@PathVariable("pageNumber") int currentPage,
			@Param("sortField") String sortField,
			@Param("sortDir") String sortDir) {
		if(keyword == null || keyword == "") {
			Page<Todo> page = todoService.pageListAll(currentPage, sortField, sortDir);
			long totalItems = page.getTotalElements();
			int totalPages = page.getTotalPages();
			
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("totalItems", totalItems);
			model.addAttribute("totalPages", totalPages);
			model.addAttribute("todos", page.getContent());
			model.addAttribute("sortField", sortField);
			model.addAttribute("sortDir", sortDir);
			model.addAttribute("pageDisplay", "yes");
			model.addAttribute("todo", new Todo());
			
			String reverseSortDir = sortDir.equals("asc") ? "desc" : "asc";
			model.addAttribute("reverseSortDir", reverseSortDir);
		}else {
			model.addAttribute("todos", todoService.search(keyword));
			model.addAttribute("keyword", keyword);
			model.addAttribute("todo", new Todo());
		}
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
	
    @GetMapping("/export")
    public void exportToPDF(HttpServletResponse response) throws DocumentException, IOException {
        response.setContentType("application/pdf");
        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
        String currentDateTime = dateFormatter.format(new Date());
         
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=Report_Todos_" + currentDateTime + ".pdf";
        response.setHeader(headerKey, headerValue);
         
        List<Todo> listTodos = todoService.listAll();
         
        UserPDFExporter exporter = new UserPDFExporter(listTodos);
        exporter.export(response);
         
    }
    
	@RequestMapping("/cardview")
	public String listCard(Model model) {
		return cardView(model, 1);
	}
    
    @GetMapping("/cardview/page/{pageNumber}")
    public String cardView(Model model,
    		@PathVariable("pageNumber") int currentPage) {
    	Page<Todo> page = todoService.pageCardView(currentPage);
		long totalItems = page.getTotalElements();
		int totalPages = page.getTotalPages();
    	model.addAttribute("todos", page.getContent());
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
    	return "cardView";
    }
	
}
