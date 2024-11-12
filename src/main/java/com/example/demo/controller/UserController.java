package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.User;
import com.example.demo.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	@Autowired
	UserService userservice;

	private String uemail;

	@RequestMapping("saveuser")
	public String saveuser(User user) {
		userservice.saveuser(user);
		return "login.jsp";
	}

	@PostMapping("/checkuser")
	public String loginUser(@RequestParam(name = "email", required = false) String email,
			@RequestParam(name = "password") String password,HttpSession session, RedirectAttributes redirectAttributes, Model model) {
		System.out.println("From User Controller"+email);
		 String myAttribute = "Hello from Controller1";
	        session.setAttribute("myAttribute", myAttribute);
	     
		if (email == null || email.isEmpty()) {
			// Handle the case where email is missing or empty

			redirectAttributes.addAttribute("error", "Email is required");
			return "redirect:/login";
		}
		if (userservice.isValidUser(email, password)) {
			redirectAttributes.addAttribute("email", email);
			   User user = userservice.getalldetail(email);
			   session.setAttribute("fullname", user.getFullName());
				session.setAttribute("user", user);
				
				
				session.setAttribute("phone", user.getPhone());
				session.setAttribute("state", user.getState());
				session.setAttribute("city", user.getCity());
				session.setAttribute("username", user.getUserName());
				session.setAttribute("email", user.getEmail());
				session.setAttribute("address", user.getAddress());

			
				return "redirect:/home";
		} else {
			redirectAttributes.addAttribute("error", "Invalid email or password");
			return "redirect:/login";
		}
	}

	@RequestMapping("showprofile")
	public String showprofile(HttpSession session) {
		return "profile.jsp";

	}

}
