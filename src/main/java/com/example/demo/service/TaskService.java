package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Task;
import com.example.demo.dao.Taskdao;
@Service
public class TaskService {

	@Autowired
	Taskdao taskdao;

	public void savetask(Task task) {
		// TODO Auto-generated method stub
		taskdao.save(task);
	}

	public List<Task> getAlltask(int bid) {
		// TODO Auto-generated method stub
		return taskdao.findByBuddyid(bid);
	}

	public List<Task> findtaskofbuddy(String email) {
		return taskdao.findByEmail(email) ;
	
		
	}

	public List<Task> findLastInsertedTaskByEmail(String email) {
		// TODO Auto-generated method stub
		return taskdao.findLastInsertedTaskByEmail(email);
	}

	public List<Task> findByEmail(String email) {
		// TODO Auto-generated method stub
		return taskdao.findByEmail(email);
	}

	public void updateTaskStatusToComplete(int taskId) {
        Task task = taskdao.findById(taskId).orElse(null);

        // Check if the task exists
        if (task != null) {
            // Update the task status to "complete"
            task.setStatus("complete");

            // Save the updated task
            taskdao.save(task);
        }
        // Handle if the task doesn't exist or other error scenarios
    }

	public void updateTaskStatusToUnComplete(int tid) {
		// TODO Auto-generated method stub
		 Task task = taskdao.findById(tid).orElse(null);

	        // Check if the task exists
	        if (task != null) {
	            // Update the task status to "complete"
	            task.setStatus("Reject");

	            // Save the updated task
	            taskdao.save(task);
	        }
		
	}

		
	
}
