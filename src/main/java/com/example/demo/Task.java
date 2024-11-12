package com.example.demo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String taskcategory;
    private String description;
    private double price;
    private String email; // Reference to the User entity
    private int buddyid;
    
    @Column(columnDefinition = "VARCHAR(255) DEFAULT 'waiting'", insertable = false)
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
	public int getBuddyid() {
		return buddyid;
	}
	public void setBuddyid(int buddyid) {
		this.buddyid = buddyid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTaskcategory() {
		return taskcategory;
	}
	public void setTaskcategory(String taskcategory) {
		this.taskcategory = taskcategory;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Task [id=" + id + ", taskcategory=" + taskcategory + ", description=" + description + ", price=" + price
				+ ", email=" + email + ", buddyid=" + buddyid + ", status=" + status + "]";
	}

	public Task(Integer id, String taskcategory, String description, double price, String email, int buddyid,
			String status) {
		super();
		this.id = id;
		this.taskcategory = taskcategory;
		this.description = description;
		this.price = price;
		this.email = email;
		this.buddyid = buddyid;
		this.status = status;
	}

	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}