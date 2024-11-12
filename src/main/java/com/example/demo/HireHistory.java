package com.example.demo;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
@Entity
public class HireHistory {
	 @Override
	public String toString() {
		return "HireHistory [id=" + id + ", hireDate=" + hireDate + ", taskId=" + taskId + ", userEmail=" + userEmail
				+ ", buddyId=" + buddyId + "]";
	}

	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
	@Column(name="hire_date")
    private LocalDate hireDate;
	@Column(name="task_id")
    private int taskId;
	@Column(name="user_email")
    private String userEmail;
    @Column(name="buddy_id")
    private String buddyId;

    // Constructors

    public HireHistory() {
    }

    public HireHistory( LocalDate hireDate, int taskId, String userEmail, String buddyId) {
        this.hireDate = hireDate;
        this.taskId = taskId;
        this.userEmail = userEmail;
        this.buddyId = buddyId;
    }

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getHireDate() {
        return hireDate;
    }

    public void setHireDate(LocalDate hireDate) {
        this.hireDate = hireDate;
    }

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getBuddyId() {
        return buddyId;
    }

    public void setBuddyId(String buddyId) {
        this.buddyId = buddyId;
    }

    // Other methods as needed
}
