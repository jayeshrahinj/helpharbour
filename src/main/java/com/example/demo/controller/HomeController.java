package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.buddyService;

@Controller
public class HomeController {
	
	@Autowired
	buddyService buddyservice;
	@RequestMapping("home")
	public String showAddCustomerPage() {
	    return "home.jsp";
	}
	@RequestMapping("login")
    public String showLoginPage(Model model) {
		String message = "please Login for Hire buddy!";
        model.addAttribute("Message", message);

        return "login.jsp";
    }
	@RequestMapping("signup")
    public String showSignPage() {
        return "register.jsp";
    }
	@RequestMapping("buddysignup")
    public String showbuddySignupPage() {
        return "buddySignup.jsp";
    }
	@RequestMapping("index")
    public String showindex() {
        return "index.jsp";
    }
	
	
	
}
