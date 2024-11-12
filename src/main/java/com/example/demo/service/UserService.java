package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.User;
import com.example.demo.dao.Userdao;

@Service
public class UserService {
	@Autowired
	Userdao userdao;

	public void saveuser(User user) {
		 userdao.save(user) ;
	
		
	}

	 public boolean isValidUser(String email, String password) {
	        Optional<User> userOptional = userdao.findByEmailAndPassword(email, password);
	        return userOptional.isPresent();
	    }

	public User getalldetail(String email) {
		return userdao.findByEmail(email);
		// TODO Auto-generated method stub
		
	}
	
	

}
