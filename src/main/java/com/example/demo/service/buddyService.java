package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Buddy;
import com.example.demo.User;
import com.example.demo.dao.Buddydao;
@Service
public class buddyService {
	@Autowired
Buddydao buddydao;

	public List<Buddy> getallbuddy() {
		
		return buddydao.findAll();
	}

	public void savebuddy(Buddy buddy) {
		buddydao.save(buddy);
		// TODO Auto-generated method stub
		
	}

	public boolean isValidUsers(String email, String password) {
        Optional<Buddy> userOptional = buddydao.findByEmailAndPassword(email, password);
        return userOptional.isPresent();
    }

	public Buddy getalldetails(String email) {
		return buddydao.findByEmail(email);
		
	}

	

}
