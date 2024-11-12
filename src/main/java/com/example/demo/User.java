package com.example.demo;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class User {
	  @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Integer id;

	  @Column(name = "user_Name") // align with the database column name
	    private String userName;

	    @Column(name = "full_name")
	    private String fullName;
	    @Column(unique = true)
	    private String email;

	    private String password;
	    private String phone;
	    private String address;
	    private String city;
	    private String state;
	    @Override
		public String toString() {
			return "User [userName=" + userName + ", fullName=" + fullName + ", email=" + email + ", password="
					+ password + ", phone=" + phone + ", address=" + address + ", city=" + city + ", state=" + state
					+ "]";
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getFullName() {
			return fullName;
		}
		public void setFullName(String fullName) {
			this.fullName = fullName;
		}
		public User() {
			super();
			// TODO Auto-generated constructor stub
		}
		public User(Integer id, String userName, String fullName, String email, String password, String phone,
				String address, String city, String state) {
			super();
			this.id = id;
			this.userName = userName;
			this.fullName = fullName;
			this.email = email;
			this.password = password;
			this.phone = phone;
			this.address = address;
			this.city = city;
			this.state = state;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		
	

}
