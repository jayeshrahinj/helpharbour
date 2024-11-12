package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.demo.Buddy;
import com.example.demo.Task;

import com.example.demo.HireHistory;
import com.example.demo.service.HireHistoryService;
import com.example.demo.service.TaskService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
public class HireHistoryController {
	String date;
	LocalDate currentDate = LocalDate.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd LLLL yyyy");
	String Hiredate =currentDate.format(formatter);

	@Autowired
	private HireHistoryService hireHistoryService;

	@Autowired
	TaskService taskservice; // Assuming you have a service for HireHistory

	@RequestMapping("/confirmed")
	public String Confirmed(HttpSession session, HttpServletRequest request, Buddy buddy)

	{
		HireHistory hirehistory = new HireHistory();
		String uemail = (String) session.getAttribute("email");
		System.out.println("from hire controller" + " " + uemail);
		String buddyId = (String) session.getAttribute("buddyId");
		session.setAttribute(Hiredate, "Hiredate");

		
		String taskid = (String) session.getAttribute("taskid");
		int taskidd = Integer.parseInt(taskid);
		System.out.println("from hire controller" + " " + buddyId);
		hirehistory.setUserEmail(uemail);
		hirehistory.setTaskId(taskidd);
		hirehistory.setHireDate(currentDate);
		hirehistory.setBuddyId(buddyId);
		hireHistoryService.savedata(hirehistory);
		return "Booked.jsp";
	}

	@RequestMapping("TaskHistory")
	public String allhistory(HttpSession session) {
		String buddyid = (String) session.getAttribute("Bid");
		System.out.println("from hire controller" + " " + buddyid);
		List<HireHistory> history = hireHistoryService.getAllHireHistory(buddyid);

		int bid = Integer.parseInt(buddyid);
		List<Task> task = taskservice.getAlltask(bid);

		System.out.println("from hire controller" + " " + history);
		System.out.println("from hire controller" + " " + task);

		session.setAttribute("history", history);
		session.setAttribute("task", task);

		return "TaskHistory.jsp";

	}
}
