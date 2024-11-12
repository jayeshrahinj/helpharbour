package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.Buddy;
import com.example.demo.HireHistory;
import com.example.demo.User;
import com.example.demo.Task;
import com.example.demo.service.HireHistoryService;
import com.example.demo.service.TaskService;
import com.example.demo.service.buddyService;

import jakarta.servlet.http.HttpSession;

@Controller
public class BuddyController {

	@Autowired
	buddyService buddyservice;
	@Autowired
	TaskService taskservice;
	
	@PostMapping("buddyhome")
	public String showAddCustomerPage(@RequestParam(name = "email", required = false) String email,
				@RequestParam(name = "password") String password,HttpSession session, RedirectAttributes redirectAttributes, Model model) {
			System.out.println(email);
			System.out.println(password);
			 String myAttribute = "Hello from Controller1";
		        session.setAttribute("myAttribute", myAttribute);
		     
			if (email == null || email.isEmpty()) {
				// Handle the case where email is missing or empty

				redirectAttributes.addAttribute("error", "Email is required");
				return "redirect:/login";
			}
			if (buddyservice.isValidUsers(email, password)) {
				
				redirectAttributes.addAttribute("bemail", email);
				   Buddy buddy = buddyservice.getalldetails(email);
				   
				   session.setAttribute("bfullname", buddy.getFullName());
					session.setAttribute("bbuddy", buddy);
					
					
					Integer bid=  buddy.getId();
					String Bid = bid.toString();
					
					session.setAttribute("Bid", Bid);
					session.setAttribute("bphone", buddy.getPhone());
					session.setAttribute("bstate", buddy.getState());
					session.setAttribute("bcity", buddy.getCity());
					session.setAttribute("bgender", buddy.getGender());
					session.setAttribute("bemail", buddy.getEmail());
					 System.out.println("from buddy controller"+" "+buddy.getEmail());
					session.setAttribute("baddress", buddy.getAddress());
					session.setAttribute("bwork", buddy.getWorkExperience());
					List<Task> tasklist ;
			tasklist=	taskservice.findLastInsertedTaskByEmail(buddy.getEmail());
					System.out.print(tasklist);
			session.setAttribute("tasklist", tasklist);

				
					return "redirect:/buddyhome.jsp";
			} else {
				redirectAttributes.addAttribute("error", "Invalid email or password");
				return "redirect:/error.jsp";
			}
		}




	@GetMapping("/allbuddy")
	public String showAllBuddyPage(Model model) {
		List<Buddy> buddyList = buddyservice.getallbuddy();
		model.addAttribute("buddyList", buddyList);

		// Return null to indicate that the response has been handled
		return "allBudy.jsp";
	}
	@PostMapping("savebuddy")
	public String savebuddy(Buddy buddy) {
		//System.out.println(buddy.getFullname());
		buddyservice.savebuddy(buddy);
	    return "buddylogin.jsp";
	}
	


	
}
