package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Task;
import com.example.demo.service.TaskService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class TaskController {
	
	@Autowired
	TaskService taskservice;
	 Task task = new Task();
	@PostMapping("task")
	public String saveTask(@RequestParam("taskCategory") String taskCategory,
	        @RequestParam("description") String description, @RequestParam("price") double price,
	        Model model, HttpSession session) {

	    String email= (String) session.getAttribute("email");
	    System.out.println("from task controller"+" "+email);
	    session.setAttribute("taskid", task.getId());
	    task.setTaskcategory(taskCategory);
	    task.setDescription(description);
	    task.setPrice(price);
	    task.setEmail(email);
	     
	    return "redirect:/allbuddy";
	}

	@RequestMapping("/confirm")
	public String showconfirmpage(HttpSession session ,@RequestParam(name ="buddyId") int buddyid) {

//		HttpSession session = request.getSession();
       	task.setBuddyid(buddyid);
		taskservice.savetask(task);
	    String taskid = task.getId().toString();
	    session.setAttribute("taskid",taskid);
	    session.setAttribute("price",task.getPrice());
	    System.out.println("from task controller"+" "+task.getId());
		return "confirm.jsp";

	}
	 @GetMapping("/track")
	    public String showOrders(HttpSession session) {
		 String email = (String) session.getAttribute("email");
	 List<Task>	tasklist= taskservice.findByEmail(email);
	 session.setAttribute("tasklist", tasklist);
	        return "track.jsp"; // This should correspond to the name of your JSP file
	    }
	 @PostMapping("/accept")
	    public String handleAcceptButton(@RequestParam(name = "taskId") String taskId) {
	System.out.println(taskId+"from accept");
	int tid = Integer.parseInt(taskId);
		
	        // Call the service method to update the task status
	        taskservice.updateTaskStatusToComplete(tid);

	        return "redirect:accept.jsp"; // Redirect back to the buddyhome.jsp after handling the request
	    }
	 @PostMapping("/reject")
	    public String handleRejectButton(@RequestParam(name = "taskId") String taskId) {
	System.out.println(taskId+"from accept");
	int tid = Integer.parseInt(taskId);
		
	        // Call the service method to update the task status
	        taskservice.updateTaskStatusToUnComplete(tid);

	        return "redirect:reject.jsp"; // Redirect back to the buddyhome.jsp after handling the request
	    }
	 @RequestMapping("/negotiate")
	 public String shownegotiate()
	 {
		 return "negotiate.jsp";
	 }
}

